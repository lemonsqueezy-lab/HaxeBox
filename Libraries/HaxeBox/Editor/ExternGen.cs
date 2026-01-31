using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Xml.Linq;
using Editor;
using Sandbox;

class ExternGen
{
    private static Dictionary<string, int> GENERIC_ARITY = new(StringComparer.Ordinal);

    public static string GenerateFromRuntime(string outRoot)
    {
        if (!Directory.Exists(outRoot))
            Directory.CreateDirectory(outRoot);

        _ = typeof(Sandbox.GameObject);

        EnsureSandboxAssembliesLoaded();
        var types = CollectSandboxTypes();

        // ---- docs (best-effort) ----
        var doc = new DocProvider(types.Select(t => t.Assembly).Distinct());

        // ---- generic arity map ----
        GENERIC_ARITY = new Dictionary<string, int>(StringComparer.Ordinal);
        foreach (var t in types)
        {
            var fn = t.FullName ?? t.Name;
            if (string.IsNullOrWhiteSpace(fn)) continue;

            // 1) from `N
            if (TryGetArityFromTick(fn, out var tickN))
            {
                var noTick = StripTick(fn);
                // keep both keys: with and without `N (TypeToCsName() uses with `N)
                GENERIC_ARITY[fn] = tickN;
                GENERIC_ARITY[noTick] = tickN;
            }

            // 2) from <...> (rare for reflection FullName, but keep)
            var sp = SplitGenericType(fn);
            if (sp.Args.Count > 0)
            {
                GENERIC_ARITY[sp.Base] = sp.Args.Count;
                GENERIC_ARITY[StripTick(sp.Base)] = sp.Args.Count;
            }

            // 3) from real definition
            if (t.IsGenericTypeDefinition)
            {
                var n = t.GetGenericArguments().Length;
                GENERIC_ARITY[fn] = n;
                GENERIC_ARITY[StripTick(fn)] = n;
            }
        }

        int typeCount = 0;
        int memberCount = 0;

        foreach (var t in types.OrderBy(x => x.FullName, StringComparer.Ordinal))
        {
            var full = t.FullName ?? t.Name;
            if (string.IsNullOrWhiteSpace(full)) continue;

            if (full.Contains("$", StringComparison.Ordinal) ||
                full.Contains(".<", StringComparison.Ordinal) ||
                full.Contains("+<", StringComparison.Ordinal) ||
                full.Contains("\\u003C", StringComparison.Ordinal) ||
                full.Contains("\\u003E", StringComparison.Ordinal))
            {
                continue;
            }

            if (IsCompilerGeneratedType(t))
                continue;

            var pkgInfo = MapPackageForOutRootSbox(full);
            var hxPackage = pkgInfo.Pkg;
            var relDir = pkgInfo.RelDir;

            var hxTypeName = HxTypeNameFromCs(full);
            var typeOutDir = string.IsNullOrEmpty(relDir) ? outRoot : Join(outRoot, relDir);
            EnsureDir(typeOutDir);

            var tgen = TypeGenericParams(t);
            var tgenPart = tgen.Count > 0 ? "<" + string.Join(",", tgen) + ">" : "";

            var sb = new StringBuilder();
            sb.Append("package ").Append(hxPackage).Append(";\n\n");
            sb.Append("// EXTERNGEN_MARK: v2026-01-31\n");
            sb.Append("// EXTERNGEN_DLL: ").Append(Assembly.GetExecutingAssembly().Location.Replace("\\", "/")).Append("\n\n");

            var tDoc = doc.GetTypeSummary(t);
            if (!string.IsNullOrWhiteSpace(tDoc))
                sb.Append("/** ").Append(EscDoc(tDoc)).Append(" */\n");

            sb.Append("@:native(\"").Append(Esc(full)).Append("\")\n");
            sb.Append("extern class ").Append(hxTypeName).Append(tgenPart).Append(" {\n");

            // ---- ctors ----
            var ctors = t.GetConstructors(BindingFlags.Public | BindingFlags.Instance);
            if (ctors.Length > 0)
            {
                var uniq = new Dictionary<string, ParameterInfo[]>(StringComparer.Ordinal);

                foreach (var c in ctors)
                {
                    var ps = c.GetParameters();
                    var key = "new(" + string.Join(",", ps.Select(p => NormTypeForKey(MapType(TypeToCsName(p.ParameterType))))) + ")";
                    if (!uniq.ContainsKey(key))
                        uniq[key] = ps;
                }

                var list = uniq
                    .Select(kv => (Key: kv.Key, Ps: kv.Value))
                    .OrderBy(x => x.Key, StringComparer.Ordinal)
                    .ToList();

                bool allOver = list.Count > 1;
                foreach (var it in list)
                {
                    var ov = allOver ? "overload " : "";
                    sb.Append("  ").Append(ov)
                      .Append("function new(").Append(FmtPars(it.Ps))
                      .Append("):Void;\n");
                    memberCount++;
                }
            }

            // ---- props ----
            var props = t.GetProperties(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static);
            foreach (var p in props)
            {
                var get = p.GetGetMethod(true);
                var set = p.GetSetMethod(true);

                bool hasGet = get != null;
                bool hasSet = set != null;

                bool visible =
                    (get != null && (get.IsPublic || get.IsFamily || get.IsFamilyOrAssembly)) ||
                    (set != null && (set.IsPublic || set.IsFamily || set.IsFamilyOrAssembly));

                if (!visible) continue;

                var name = p.Name;
                if (string.IsNullOrWhiteSpace(name)) continue;
                if (IsBadMemberName(name)) continue;

                var acc = (!hasGet && !hasSet) ? "default"
                        : (hasGet && hasSet) ? "get,set"
                        : (hasGet) ? "get,never"
                        : "never,set";

                var pDoc = doc.GetPropertySummary(p);
                if (!string.IsNullOrWhiteSpace(pDoc))
                    sb.Append("  /** ").Append(EscDoc(pDoc)).Append(" */\n");

                sb.Append("  var ").Append(SanitizeMemberName(name))
                  .Append("(").Append(acc).Append("):")
                  .Append(MapType(TypeToCsName(p.PropertyType))).Append(";\n");
                memberCount++;
            }

            // ---- methods ----
            var methods = new List<RuntimeMethod>();
            var ms = t.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static);
            foreach (var m in ms)
            {
                if (m.IsSpecialName) continue;

                bool isPublic = m.IsPublic;
                bool isProtected = m.IsFamily || m.IsFamilyOrAssembly;
                if (!isPublic && !isProtected) continue;

                if (m.DeclaringType != t) continue;

                var name = m.Name;
                if (string.IsNullOrWhiteSpace(name)) continue;
                if (IsBadMemberName(name)) continue;

                methods.Add(new RuntimeMethod
                {
                    Info = m,
                    Name = name,
                    ReturnType = TypeToCsName(m.ReturnType),
                    IsStatic = m.IsStatic,
                    IsProtected = isProtected,
                    Parameters = m.GetParameters()
                });
            }

            if (methods.Count > 0)
            {
                var byName = new Dictionary<string, List<RuntimeMethod>>(StringComparer.Ordinal);
                foreach (var m in methods)
                {
                    if (!byName.TryGetValue(m.Name, out var arr))
                    {
                        arr = new List<RuntimeMethod>();
                        byName[m.Name] = arr;
                    }
                    arr.Add(m);
                }

                var names = byName.Keys.OrderBy(x => x, StringComparer.Ordinal).ToList();

                foreach (var mn in names)
                {
                    var grp = byName[mn];

                    var unique = new Dictionary<string, RuntimeMethod>(StringComparer.Ordinal);
                    foreach (var mm in grp)
                    {
                        var gen = CollectGenericParams(mm);
                        var key = SignatureKey(mm, gen);
                        if (!unique.ContainsKey(key))
                            unique[key] = mm;
                    }

                    var uniqArr = unique.Values.ToList();
                    if (uniqArr.Count == 0) continue;

                    bool allOverloads = uniqArr.Count > 1;

                    uniqArr.Sort((a, b) =>
                    {
                        int pa = a.Parameters.Length;
                        int pb = b.Parameters.Length;
                        if (pa != pb) return pa.CompareTo(pb);

                        var ga = CollectGenericParams(a);
                        var gb = CollectGenericParams(b);
                        return string.Compare(SignatureKey(a, ga), SignatureKey(b, gb), StringComparison.Ordinal);
                    });

                    foreach (var mm in uniqArr)
                    {
                        var gen = CollectGenericParams(mm);

                        var mDoc = doc.GetMethodSummary(mm.Info);
                        if (!string.IsNullOrWhiteSpace(mDoc))
                            sb.Append("  /** ").Append(EscDoc(mDoc)).Append(" */\n");

                        WriteMethodLine(sb, mm, gen, allOverloads);
                        memberCount++;
                    }
                }
            }

            sb.Append("}\n");

            File.WriteAllText(Path.Combine(typeOutDir, hxTypeName + ".hx"), sb.ToString(), Encoding.UTF8);
            typeCount++;
        }

        return $"Externs generated:\n{outRoot}\n\nTypes: {typeCount}\nMembers: {memberCount}";
    }

    // ----------------- FIX #2: @:protected inline -----------------
    private static void WriteMethodLine(StringBuilder sb, RuntimeMethod m, List<string> gen, bool asOverload)
    {
        var st = m.IsStatic ? "static " : "";
        var ov = asOverload ? "overload " : "";
        var genPart = gen.Count > 0 ? "<" + string.Join(",", gen) + ">" : "";

        sb.Append("  ");
        if (m.IsProtected) sb.Append("@:protected ");
        sb.Append(st).Append(ov)
          .Append("function ").Append(SanitizeMemberName(m.Name)).Append(genPart)
          .Append("(").Append(FmtPars(m.Parameters))
          .Append("):").Append(MapType(m.ReturnType)).Append(";\n");
    }

    private sealed class RuntimeMethod
    {
        public MethodInfo Info = null!;
        public string Name = "";
        public string ReturnType = "";
        public bool IsStatic;
        public bool IsProtected;
        public ParameterInfo[] Parameters = Array.Empty<ParameterInfo>();
    }

    // ----------------- FIX #1: generic arity robust -----------------
    private static string MapType(string cs)
    {
        cs = (cs ?? "").Trim();

        switch (cs)
        {
            case "":
                return "Dynamic";
            case "Dynamic":
            case "Void":
            case "Int":
            case "UInt":
            case "Float":
            case "Bool":
            case "String":
                return cs;
        }

        var sp = SplitGenericType(cs);
        var @base = sp.Base;
        var args = sp.Args;

        // If no <...> but base is generic definition or we know its arity -> fill Dynamic params
        if (args.Count == 0)
        {
            var normBase = StripTickPreserveNested(@base);

            if (TryGetArityFromTick(@base, out var n) ||
                GENERIC_ARITY.TryGetValue(@base, out n) ||
                GENERIC_ARITY.TryGetValue(normBase, out n))
            {
                args = new List<string>();
                for (int i = 0; i < n; i++)
                    args.Add("Dynamic");
            }
        }

        if (IsGenericParamName(@base))
            return @base;

        var sr = SimpleName(@base);
        if (IsGenericParamName(sr))
            return sr;

        if (@base.EndsWith("[]", StringComparison.Ordinal))
        {
            var inner = @base.Substring(0, @base.Length - 2);
            return "Array<" + MapType(inner) + ">";
        }

        if (cs.StartsWith("System.Nullable`1<", StringComparison.Ordinal) && cs.EndsWith(">", StringComparison.Ordinal))
        {
            var inner = (args.Count > 0) ? args[0] : "System.Object";
            return "Null<" + MapType(inner) + ">";
        }

        switch (StripTickPreserveNested(@base))
        {
            case "System.Void": return "Void";
            case "System.Boolean": return "Bool";
            case "System.String": return "String";
            case "System.Single":
            case "System.Double":
            case "System.Decimal":
                return "Float";
            case "System.Int16":
            case "System.UInt16":
            case "System.Int32":
            case "System.Byte":
            case "System.SByte":
                return "Int";
            case "System.UInt32":
                return "UInt";
            case "System.Int64":
                return "haxe.Int64";
            case "System.Object":
                return "Dynamic";
        }

        var mappedBase = MapNonSystem(@base);

        if (args.Count > 0)
        {
            if (mappedBase == "Dynamic") return "Dynamic";
            var mappedArgs = string.Join(",", args.Select(MapType));
            return mappedBase + "<" + mappedArgs + ">";
        }

        return mappedBase;
    }

    private static bool TryGetArityFromTick(string s, out int n)
    {
        n = 0;
        if (string.IsNullOrWhiteSpace(s)) return false;

        int tick = s.IndexOf('`');
        if (tick < 0 || tick + 1 >= s.Length) return false;

        int i = tick + 1;
        int val = 0;
        bool any = false;
        while (i < s.Length)
        {
            char c = s[i];
            if (c < '0' || c > '9') break;
            any = true;
            val = (val * 10) + (c - '0');
            i++;
        }

        if (!any || val <= 0) return false;
        n = val;
        return true;
    }

    private static string StripTick(string s)
    {
        s = (s ?? "").Trim();
        int tick = s.IndexOf('`');
        return tick >= 0 ? s.Substring(0, tick) : s;
    }

    private static string NormTypeForKey(string t)
    {
        t = (t ?? "").Trim();
        if (t.StartsWith("Null<", StringComparison.Ordinal) && t.EndsWith(">", StringComparison.Ordinal))
            return t.Substring(5, t.Length - 6).Trim();
        return t;
    }

    private static string SignatureKey(RuntimeMethod m, List<string> gen)
    {
        var ret = MapType(m.ReturnType);
        var pars = string.Join(",", m.Parameters.Select(p => NormTypeForKey(MapType(TypeToCsName(p.ParameterType)))));
        var gp = string.Join(",", gen);
        return (m.IsStatic ? "S" : "I") + (m.IsProtected ? "P" : "U") + "|" + m.Name + "|<" + gp + ">|" + ret + "|(" + pars + ")";
    }

    private static List<string> CollectGenericParams(RuntimeMethod m)
    {
        var set = new HashSet<string>(StringComparer.Ordinal);

        // method generic parameters (best-effort)
        if (m.Info.IsGenericMethodDefinition)
            foreach (var ga in m.Info.GetGenericArguments())
                if (IsGenericParamName(ga.Name)) set.Add(ga.Name);

        AddGenericParamsFromType(set, m.ReturnType);
        foreach (var p in m.Parameters)
            AddGenericParamsFromType(set, TypeToCsName(p.ParameterType));

        var outList = set.ToList();
        outList.Sort(StringComparer.Ordinal);
        return outList;
    }

    private static void AddGenericParamsFromType(HashSet<string> set, string typeStr)
    {
        foreach (var tok in ExtractTypeTokens(typeStr))
            if (IsGenericParamName(tok))
                set.Add(tok);
    }

    private static List<string> TypeGenericParams(Type t)
    {
        if (!t.IsGenericTypeDefinition) return new List<string>();
        return t.GetGenericArguments().Select(x => x.Name).ToList();
    }

    private static List<string> ExtractTypeTokens(string s)
    {
        s = (s ?? "").Trim();
        if (s == "") return new List<string>();

        if (s.EndsWith("[]", StringComparison.Ordinal))
            return new List<string> { StripNamespaceAndTick(s.Substring(0, s.Length - 2)) };

        int lt = s.IndexOf("<", StringComparison.Ordinal);
        if (lt < 0)
            return new List<string> { StripNamespaceAndTick(s) };

        var outList = new List<string>();
        outList.Add(StripNamespaceAndTick(s.Substring(0, lt)));

        foreach (var a in GenericArgs(s))
            outList.AddRange(ExtractTypeTokens(a));

        return outList;
    }

    private static string StripNamespaceAndTick(string s)
    {
        s = (s ?? "").Trim();
        int dot = s.LastIndexOf(".", StringComparison.Ordinal);
        if (dot >= 0) s = s.Substring(dot + 1);

        int tick = s.IndexOf("`", StringComparison.Ordinal);
        if (tick >= 0) s = s.Substring(0, tick);

        return s;
    }

    private static bool IsGenericParamName(string s)
    {
        if (s == null) return false;
        s = s.Trim();

        if (s.Length == 1)
        {
            char c = s[0];
            return c >= 'A' && c <= 'Z';
        }

        if (s == "T") return true;

        if (s.Length >= 2 && s[0] == 'T')
        {
            for (int i = 1; i < s.Length; i++)
            {
                char c = s[i];
                bool isAZ = (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
                bool is09 = (c >= '0' && c <= '9');
                if (!isAZ && !is09) return false;
            }
            return true;
        }

        return false;
    }

    private readonly struct GenericSplit
    {
        public readonly string Base;
        public readonly List<string> Args;
        public GenericSplit(string @base, List<string> args) { Base = @base; Args = args; }
    }

    private static GenericSplit SplitGenericType(string s)
    {
        s = (s ?? "").Trim();
        int lt = s.IndexOf("<", StringComparison.Ordinal);
        int gt = s.LastIndexOf(">", StringComparison.Ordinal);
        if (lt < 0 || gt <= lt)
            return new GenericSplit(s, new List<string>());

        var @base = s.Substring(0, lt).Trim();
        var args = GenericArgs(s);
        return new GenericSplit(@base, args);
    }

    private static List<string> GenericArgs(string s)
    {
        int lt = s.IndexOf("<", StringComparison.Ordinal);
        int gt = s.LastIndexOf(">", StringComparison.Ordinal);
        if (lt < 0 || gt <= lt) return new List<string>();

        var inner = s.Substring(lt + 1, gt - lt - 1);

        var outList = new List<string>();
        var buf = new StringBuilder();
        int depth = 0;

        for (int i = 0; i < inner.Length; i++)
        {
            char ch = inner[i];
            if (ch == '<') { depth++; buf.Append(ch); continue; }
            if (ch == '>') { depth--; buf.Append(ch); continue; }
            if (ch == ',' && depth == 0)
            {
                outList.Add(buf.ToString().Trim());
                buf.Clear();
                continue;
            }
            buf.Append(ch);
        }

        var last = buf.ToString().Trim();
        if (last != "")
            outList.Add(last);

        return outList;
    }

    private static string MapNonSystem(string cs)
    {
        var simple = HxTypeNameFromCs(cs);

        if (!cs.Contains(".", StringComparison.Ordinal))
            return "sbox." + simple;

        if (cs.StartsWith("Sandbox.", StringComparison.Ordinal) || cs == "Sandbox")
        {
            int lastDot = cs.LastIndexOf(".", StringComparison.Ordinal);
            var ns = (lastDot >= 0) ? cs.Substring(0, lastDot) : "";

            if (ns == "Sandbox")
                return "sbox." + simple;

            var rest = ns.Substring("Sandbox.".Length).ToLowerInvariant();
            return "sbox." + rest + "." + simple;
        }

        return "Dynamic";
    }

    private static string FmtPars(ParameterInfo[] pars)
    {
        if (pars.Length == 0) return "";

        var used = new HashSet<string>(StringComparer.Ordinal);
        var outList = new List<string>();

        for (int i = 0; i < pars.Length; i++)
        {
            var raw = pars[i].Name;
            var n = SanitizeMemberName(string.IsNullOrWhiteSpace(raw) ? ("arg" + i) : raw!.Trim());

            var baseName = n;
            int k = 2;
            while (used.Contains(n))
            {
                n = baseName + k;
                k++;
            }

            used.Add(n);
            outList.Add(n + ":" + MapType(TypeToCsName(pars[i].ParameterType)));
        }

        return string.Join(", ", outList);
    }

    private static string SanitizeTypeName(string name)
    {
        int lt = name.IndexOf("<", StringComparison.Ordinal);
        if (lt >= 0) name = name.Substring(0, lt);

        int tick = name.IndexOf("`", StringComparison.Ordinal);
        if (tick >= 0) name = name.Substring(0, tick);

        var sb = new StringBuilder();
        for (int i = 0; i < name.Length; i++)
        {
            char c = name[i];
            bool isAZ = (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
            bool is09 = (c >= '0' && c <= '9');
            if (isAZ || is09 || c == '_')
                sb.Append(c);
        }

        var s = sb.ToString();
        if (s == "") s = "Type";

        if (s.Length > 0 && char.IsDigit(s[0]))
            s = "_" + s;

        return s;
    }

    private static string SanitizeMemberName(string name)
    {
        return name switch
        {
            "new" => "_new",
            "switch" => "_switch",
            "function" => "_function",
            "default" => "_default",
            "var" => "_var",
            _ => name
        };
    }

    private static string SimpleName(string full)
    {
        int dot = full.LastIndexOf(".", StringComparison.Ordinal);
        return dot >= 0 ? full.Substring(dot + 1) : full;
    }

    private static string Esc(string s)
    {
        if (s == null) return "";
        return s.Replace("\\", "\\\\").Replace("\"", "\\\"");
    }

    private static string EscDoc(string s)
    {
        s = (s ?? "").Replace("\r", " ").Replace("\n", " ").Trim();
        while (s.Contains("  ", StringComparison.Ordinal)) s = s.Replace("  ", " ");
        return s.Replace("*/", "* /");
    }

    private static string Join(string a, string b)
    {
        a = Norm(a);
        b = Norm(b);

        if (a.EndsWith("/", StringComparison.Ordinal))
            a = a.Substring(0, a.Length - 1);

        if (b.StartsWith("/", StringComparison.Ordinal))
            b = b.Substring(1);

        return a + "/" + b;
    }

    private static string Norm(string p) => (p ?? "").Replace("\\", "/");

    private static void EnsureDir(string p)
    {
        // safer than manual splitting (works for absolute paths too)
        Directory.CreateDirectory(p);
    }

    private static string TypeToCsName(Type t)
    {
        if (t == null) return "System.Object";

        if (t.IsArray)
            return TypeToCsName(t.GetElementType()!) + "[]";

        if (t.IsGenericParameter)
            return t.Name;

        if (t.IsGenericType && t.GetGenericTypeDefinition().FullName == "System.Nullable`1")
        {
            var inner = t.GetGenericArguments()[0];
            return "System.Nullable`1<" + TypeToCsName(inner) + ">";
        }

        if (t.IsGenericType)
        {
            var def = t.GetGenericTypeDefinition();
            var defName = def.FullName ?? def.Name;
            var args = t.GetGenericArguments().Select(TypeToCsName);
            return defName + "<" + string.Join(",", args) + ">";
        }

        return t.FullName ?? t.Name;
    }

    private static bool IsCompilerGeneratedType(Type t)
    {
        if (t.IsDefined(typeof(CompilerGeneratedAttribute), inherit: false))
            return true;

        var name = t.Name ?? "";
        if (name.StartsWith("<", StringComparison.Ordinal))
            return true;

        if (name.Contains("DisplayClass", StringComparison.Ordinal) ||
            name.Contains("AnonStorey", StringComparison.Ordinal))
            return true;

        return false;
    }

    private static bool IsBadMemberName(string name)
    {
        if (string.IsNullOrWhiteSpace(name)) return true;

        if (name[0] == '<') return true;
        if (name.Contains("<", StringComparison.Ordinal) || name.Contains(">", StringComparison.Ordinal))
            return true;
        return false;
    }

    private readonly struct PkgInfo
    {
        public readonly string Pkg;
        public readonly string RelDir;
        public PkgInfo(string pkg, string relDir) { Pkg = pkg; RelDir = relDir; }
    }

    private static PkgInfo MapPackageForOutRootSbox(string nativeFull)
    {
        string ns = "";
        int dot = nativeFull.LastIndexOf(".", StringComparison.Ordinal);
        if (dot >= 0) ns = nativeFull.Substring(0, dot);

        if (ns == "Sandbox")
            return new PkgInfo("sbox", "");

        if (ns.StartsWith("Sandbox.", StringComparison.Ordinal))
        {
            var rest = ns.Substring("Sandbox.".Length).ToLowerInvariant();
            return new PkgInfo("sbox." + rest, rest.Replace('.', '/'));
        }

        return new PkgInfo("sbox", "");
    }

    private static void EnsureSandboxAssembliesLoaded()
    {
        var candidates = new[]
        {
            "Sandbox.System",
            "Sandbox.Engine",
            "Sandbox.Reflection"
        };

        foreach (var n in candidates)
        {
            try
            {
                if (!AppDomain.CurrentDomain.GetAssemblies().Any(a => (a.GetName().Name ?? "") == n))
                    Assembly.Load(new AssemblyName(n));
            }
            catch { }
        }

        foreach (var a in AppDomain.CurrentDomain.GetAssemblies().ToArray())
        {
            AssemblyName[] refs;
            try { refs = a.GetReferencedAssemblies(); } catch { continue; }

            foreach (var r in refs)
            {
                var rn = r.Name ?? "";
                if (!rn.StartsWith("Sandbox", StringComparison.OrdinalIgnoreCase))
                    continue;

                try
                {
                    if (!AppDomain.CurrentDomain.GetAssemblies().Any(x => (x.GetName().Name ?? "") == rn))
                        Assembly.Load(r);
                }
                catch { }
            }
        }
    }

    private static List<Type> CollectSandboxTypes()
    {
        var list = new List<Type>();

        foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
        {
            var an = a.GetName().Name ?? "";
            if (!an.StartsWith("Sandbox.", StringComparison.OrdinalIgnoreCase))
                continue;

            Type[] ts;
            try { ts = a.GetTypes(); }
            catch (ReflectionTypeLoadException ex) { ts = ex.Types.Where(x => x != null).ToArray()!; }
            catch { continue; }

            foreach (var t in ts)
            {
                if (t == null) continue;
                if (t.FullName == null) continue;
                if (t.IsPointer) continue;

                if (IsCompilerGeneratedType(t)) continue;

                var ns = t.Namespace ?? "";
                bool ok =
                    ns == "Sandbox" ||
                    ns.StartsWith("Sandbox.", StringComparison.Ordinal) ||
                    ns == "";

                if (!ok) continue;

                if (!(t.IsPublic || t.IsNestedPublic))
                    continue;

                list.Add(t);
            }
        }

        return list
            .GroupBy(t => t.FullName!, StringComparer.Ordinal)
            .Select(g => g.First())
            .ToList();
    }

    // ----------------- XML docs (best-effort) -----------------
    private sealed class DocProvider
    {
        private readonly Dictionary<string, string> _map = new(StringComparer.Ordinal);

        public DocProvider(IEnumerable<Assembly> assemblies)
        {
            foreach (var asm in assemblies)
            {
                var loc = "";
                try { loc = asm.Location ?? ""; } catch { }
                if (string.IsNullOrWhiteSpace(loc)) continue;

                var xml = Path.ChangeExtension(loc, ".xml");
                if (!File.Exists(xml)) continue;

                try
                {
                    var x = XDocument.Load(xml);
                    var members = x.Root?.Element("members")?.Elements("member");
                    if (members == null) continue;

                    foreach (var m in members)
                    {
                        var name = (string?)m.Attribute("name");
                        if (string.IsNullOrWhiteSpace(name)) continue;

                        var sum = m.Element("summary")?.Value;
                        if (string.IsNullOrWhiteSpace(sum)) continue;

                        sum = Clean(sum);
                        if (sum == "") continue;

                        _map[name!] = sum;
                    }
                }
                catch { }
            }
        }

        public string GetTypeSummary(Type t)
        {
            var full = t.FullName ?? "";
            if (full == "") return "";
            var key = "T:" + full;
            return _map.TryGetValue(key, out var s) ? s : "";
        }

        public string GetPropertySummary(PropertyInfo p)
        {
            var dt = p.DeclaringType?.FullName ?? "";
            if (dt == "") return "";
            var key = "P:" + dt + "." + p.Name;
            return _map.TryGetValue(key, out var s) ? s : "";
        }

        public string GetMethodSummary(MethodInfo m)
        {
            var dt = m.DeclaringType?.FullName ?? "";
            if (dt == "") return "";

            // try exact-ish without params first (works surprisingly often as a prefix in docs)
            // M:Namespace.Type.Method
            var prefix = "M:" + dt + "." + m.Name;

            // 1) exact match
            if (_map.TryGetValue(prefix, out var s0))
                return s0;

            // 2) prefix match (ignore overload params)
            foreach (var kv in _map)
                if (kv.Key.StartsWith(prefix, StringComparison.Ordinal))
                    return kv.Value;

            return "";
        }

        private static string Clean(string s)
        {
            s = (s ?? "").Replace("\r", " ").Replace("\n", " ").Trim();
            while (s.Contains("  ", StringComparison.Ordinal)) s = s.Replace("  ", " ");
            return s;
        }
    }

    private static string HxTypeNameFromCs(string csFullOrBase)
    {
        csFullOrBase = (csFullOrBase ?? "").Trim();
        if (csFullOrBase == "") return "Type";

        // remove generic args <...> if any
        int lt = csFullOrBase.IndexOf("<", StringComparison.Ordinal);
        if (lt >= 0) csFullOrBase = csFullOrBase.Substring(0, lt);

        // strip namespace
        int dot = csFullOrBase.LastIndexOf(".", StringComparison.Ordinal);
        string typePart = dot >= 0 ? csFullOrBase.Substring(dot + 1) : csFullOrBase;

        // flatten nested types: Outer`1+Inner`2 => Outer_Inner
        var parts = typePart.Split('+', StringSplitOptions.RemoveEmptyEntries);

        var cleanedParts = new List<string>(parts.Length);
        foreach (var p in parts)
        {
            var seg = p.Trim();

            // remove `N for each segment only (do NOT drop "+Inner")
            int tick = seg.IndexOf('`');
            if (tick >= 0) seg = seg.Substring(0, tick);

            // keep only [A-Za-z0-9_]
            var sb = new StringBuilder();
            for (int i = 0; i < seg.Length; i++)
            {
                char c = seg[i];
                bool isAZ = (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
                bool is09 = (c >= '0' && c <= '9');
                if (isAZ || is09 || c == '_') sb.Append(c);
            }

            var outSeg = sb.ToString();
            if (outSeg == "") outSeg = "Type";
            cleanedParts.Add(outSeg);
        }

        var name = string.Join("_", cleanedParts);
        if (name.Length > 0 && char.IsDigit(name[0])) name = "_" + name;
        return name == "" ? "Type" : name;
    }

    private static string StripTickPreserveNested(string s)
    {
        s = (s ?? "").Trim();
        if (s == "") return s;

        // remove <...>
        int lt = s.IndexOf("<", StringComparison.Ordinal);
        if (lt >= 0) s = s.Substring(0, lt);

        // strip `N inside each nested segment
        int dot = s.LastIndexOf(".", StringComparison.Ordinal);
        string ns = dot >= 0 ? s.Substring(0, dot + 1) : "";
        string typePart = dot >= 0 ? s.Substring(dot + 1) : s;

        var parts = typePart.Split('+', StringSplitOptions.RemoveEmptyEntries);
        for (int i = 0; i < parts.Length; i++)
        {
            var seg = parts[i];
            int tick = seg.IndexOf('`');
            if (tick >= 0) seg = seg.Substring(0, tick);
            parts[i] = seg;
        }

        return ns + string.Join("+", parts);
    }
}
