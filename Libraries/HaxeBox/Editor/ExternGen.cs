#nullable enable

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Xml.Linq;

static class ExternGen
{
    private static readonly Dictionary<string, StubType> ExternalStubs = new(StringComparer.Ordinal);
    private static readonly Dictionary<string, int> RootArityRuntimeCache = new(StringComparer.Ordinal);
    private static readonly Dictionary<string, HashSet<int>> ExternalBaseAritiesUsed = new(StringComparer.Ordinal);
    private static readonly Dictionary<string, int> RootGenericArity = new(StringComparer.Ordinal);

    private static readonly bool GenerateExternalStubs = true;

    private static readonly Dictionary<string, string> PrimitiveTypeMap = new(StringComparer.Ordinal)
    {
        ["Dynamic"] = "Dynamic",
        ["Void"] = "Void",
        ["Int"] = "Int",
        ["UInt"] = "UInt",
        ["Float"] = "Float",
        ["Bool"] = "Bool",
        ["String"] = "String",
        ["System.Void"] = "Void",
        ["System.Boolean"] = "Bool",
        ["System.String"] = "String",
        ["System.Single"] = "Single",
        ["System.Double"] = "Float",
        ["System.Decimal"] = "cs.system.Decimal",
        ["System.Int16"] = "Int",
        ["System.UInt16"] = "Int",
        ["System.Int32"] = "Int",
        ["System.Byte"] = "Int",
        ["System.SByte"] = "Int",
        ["System.UInt32"] = "UInt",
        ["System.Int64"] = "haxe.Int64",
        ["System.Object"] = "cs.system.Object",
    };

    private static bool TryMapPrimitive(string csType, out string hxType)
    {
        if (PrimitiveTypeMap.TryGetValue(csType, out var v)) { hxType = v; return true; }
        hxType = "";
        return false;
    }

    private readonly struct Root
    {
        public readonly string Name;
        public readonly string Lower;
        public Root(string name) { Name = name; Lower = name.ToLowerInvariant(); }
    }

    private sealed class DocStore
    {
        private readonly Dictionary<string, string> _summary = new(StringComparer.Ordinal);

        public static DocStore Load(IEnumerable<Assembly> assemblies)
        {
            var ds = new DocStore();
            foreach (var a in assemblies)
            {
                try
                {
                    var loc = SafeLocation(a);
                    if (string.IsNullOrWhiteSpace(loc)) continue;
                    var xml = Path.ChangeExtension(loc, ".xml");
                    if (!File.Exists(xml)) continue;

                    var xdoc = XDocument.Load(xml);
                    var members = xdoc.Root?.Element("members")?.Elements("member");
                    if (members == null) continue;

                    foreach (var m in members)
                    {
                        var idAttr = m.Attribute("name");
                        if (idAttr == null) continue;
                        var id = idAttr.Value;
                        if (id.Length == 0) continue;
                        var sum = Normalize(m.Element("summary")?.Value);
                        if (sum.Length == 0) continue;
                        ds._summary[id] = sum;
                    }
                }
                catch { }
            }
            return ds;
        }

        public string TypeSummary(Type t) => Get("T:" + XmlDocTypeName(t));

        public string PropSummary(PropertyInfo p)
        {
            var dt = p.DeclaringType;
            return dt == null ? "" : Get("P:" + XmlDocTypeName(dt) + "." + p.Name);
        }

        public string MethodSummary(MethodBase m)
        {
            var dt = m.DeclaringType;
            if (dt == null) return "";

            var baseId = "M:" + XmlDocTypeName(dt) + "." + m.Name;
            if (m is MethodInfo mi && mi.IsGenericMethodDefinition) baseId += "``" + mi.GetGenericArguments().Length;

            var ps = m.GetParameters();
            if (ps.Length == 0)
            {
                var s0 = Get(baseId);
                if (s0.Length != 0) return s0;
                if (m is ConstructorInfo) return Get("M:" + XmlDocTypeName(dt) + ".#ctor");
                return "";
            }

            var sig = "(" + string.Join(",", ps.Select(p => XmlDocTypeName(p.ParameterType))) + ")";
            var s1 = Get(baseId + sig);
            if (s1.Length != 0) return s1;
            if (m is ConstructorInfo) return Get("M:" + XmlDocTypeName(dt) + ".#ctor" + sig);
            return "";
        }

        private string Get(string id) => _summary.TryGetValue(id, out var s) ? s : "";

        private static string SafeLocation(Assembly a) { try { return a.Location; } catch { return ""; } }

        private static string Normalize(string? s)
        {
            s ??= "";
            s = s.Replace("\r", " ").Replace("\n", " ").Trim();
            while (s.Contains("  ", StringComparison.Ordinal)) s = s.Replace("  ", " ", StringComparison.Ordinal);
            return s.Replace("*/", "* /", StringComparison.Ordinal).Trim();
        }

        private static string XmlDocTypeName(Type t)
        {
            if (t.IsByRef)
            {
                var et = t.GetElementType();
                if (et == null) return "System.Object";
                t = et;
            }

            if (t.IsArray)
            {
                var et = t.GetElementType();
                if (et == null) return "System.Object[]";
                return XmlDocTypeName(et) + "[]";
            }

            if (t.IsPointer)
            {
                var et = t.GetElementType();
                if (et == null) return "System.Object*";
                return XmlDocTypeName(et) + "*";
            }

            if (t.IsGenericParameter) return t.Name;

            var name = (t.FullName ?? t.Name ?? "System.Object").Replace('+', '.');

            if (t.IsGenericType)
            {
                var def = t.IsGenericTypeDefinition ? t : t.GetGenericTypeDefinition();
                var defName = (def.FullName ?? def.Name ?? name).Replace('+', '.');
                var tick = defName.IndexOf('`');
                if (tick >= 0) defName = defName.Substring(0, tick);

                var args = t.GetGenericArguments();
                if (args.Length > 0) defName += "{" + string.Join(",", args.Select(XmlDocTypeName)) + "}";
                return defName;
            }

            return name;
        }
    }

    private sealed class ApiType
    {
        public string NativeFullName = "";
        public string Namespace = "";
        public string Name = "";
        public bool IsFinal;
        public bool IsEnum;
        public bool IsValueType;
        public string Summary = "";

        public string EnumUnderlying = "System.Int32";
        public List<string> EnumMembers = new();

        public List<string> TypeGenericParams = new();
        public List<ApiCtor> Ctors = new();
        public List<ApiProp> Props = new();
        public List<ApiMethod> Methods = new();
    }

    private sealed class ApiCtor
    {
        public List<ApiParam> Params = new();
        public string Summary = "";
    }

    private sealed class ApiProp
    {
        public string Name = "";
        public string Type = "System.Object";
        public MethodInfo? GetMethod;
        public MethodInfo? SetMethod;
        public bool IsProtected;
        public bool IsStatic;
        public bool IsReadOnly;
        public bool IsConst;
        public bool IsField;
        public string Summary = "";
    }

    private sealed class ApiMethod
    {
        public string Name = "";
        public string ReturnType = "System.Void";
        public bool IsStatic;
        public bool IsProtected;
        public List<ApiParam> Params = new();
        public List<string> MethodGenericParams = new();
        public string Summary = "";
    }

    private readonly struct ApiParam
    {
        public readonly string Name;
        public readonly string Type;
        public ApiParam(string name, string type) { Name = name; Type = type; }
    }

    private sealed class StubType
    {
        public string CsNative = "";
        public string HxPackage = "";
        public string HxName = "";
        public int GenericArity;
    }

    public static string GenerateFromRuntime(string[] rootNamespaces)
    {
        if (rootNamespaces == null || rootNamespaces.Length == 0)
            throw new ArgumentException("rootNamespaces must not be empty", nameof(rootNamespaces));

        string outRoot = Path.Combine(HaxeBox.projectRoot, ".haxe", "extern");

        var roots = rootNamespaces
            .Where(x => !string.IsNullOrWhiteSpace(x))
            .Select(x => x.Trim())
            .Distinct(StringComparer.OrdinalIgnoreCase)
            .Select(x => new Root(x))
            .ToArray();

        if (roots.Length == 0)
            throw new ArgumentException("rootNamespaces must not be empty", nameof(rootNamespaces));

        Directory.CreateDirectory(outRoot);
        ExternalStubs.Clear();
        ExternalBaseAritiesUsed.Clear();
        RootGenericArity.Clear();
        RootArityRuntimeCache.Clear();

        var assemblies = AppDomain.CurrentDomain.GetAssemblies().Where(a => !a.IsDynamic).ToArray();
        var docs = DocStore.Load(assemblies);

        var types = CollectTypes(assemblies, roots, docs);
        CollectExternalBaseAritiesUsed(types, roots);

        foreach (var t in types)
        {
            var arity = t.TypeGenericParams.Count;
            if (arity <= 0) continue;

            var schemaFull = string.IsNullOrWhiteSpace(t.Namespace) ? t.Name : (t.Namespace + "." + t.Name);
            RootGenericArity[schemaFull] = arity;
            RootGenericArity[schemaFull + "`" + arity] = arity;
        }

        var knownGlobal = new HashSet<string>(types.Where(t => t.Namespace.Length == 0).Select(t => t.Name), StringComparer.Ordinal);
        var generatedNative = new HashSet<string>(types.Select(t => t.NativeFullName), StringComparer.Ordinal);

        var typeCount = 0;
        var memberCount = 0;

        foreach (var t in types.OrderBy(x => x.NativeFullName, StringComparer.Ordinal))
        {
            var isGlobal = string.IsNullOrWhiteSpace(t.Namespace);

            string pkg;
            string dir;

            if (isGlobal) { pkg = ""; dir = outRoot; }
            else
            {
                var root = PickRootForType(t, roots);
                pkg = BuildHaxePackage(root, t.Namespace);
                dir = BuildOutDir(outRoot, root, t.Namespace);
            }

            Directory.CreateDirectory(dir);

            var hxName = SanitizeTypeName(t.Name);
            var sb = new StringBuilder(512);

            sb.Append(pkg.Length == 0 ? "package;\n\n" : $"package {pkg};\n\n");

            if (!string.IsNullOrWhiteSpace(t.Summary))
                sb.Append("/** ").Append(EscDoc(t.Summary)).Append(" */\n");

            sb.Append("@:native(\"").Append(Esc(t.NativeFullName)).Append("\")\n");

            if (t.IsEnum)
            {
                sb.Append("extern enum abstract ").Append(hxName).Append("(")
                  .Append(MapType(t.EnumUnderlying, roots, roots[0], knownGlobal)).Append(") {\n");

                var uniq = new HashSet<string>(StringComparer.Ordinal);
                foreach (var em in t.EnumMembers)
                {
                    var n = SanitizeMemberName(em);
                    if (n.Length == 0 || !uniq.Add(n)) continue;
                    sb.Append("    var ").Append(n).Append(";\n");
                }

                sb.Append("}\n");
                File.WriteAllText(Path.Combine(dir, hxName + ".hx"), sb.ToString(), Encoding.UTF8);
                typeCount++;
                continue;
            } else if (t.IsFinal)
                sb.Append("final ");

            var tgen = t.TypeGenericParams.Count > 0 ? "<" + string.Join(",", t.TypeGenericParams) + ">" : "";
            sb.Append("extern class ").Append(hxName).Append(tgen).Append(" {\n");

            if (t.Ctors.Count > 0)
            {
                var uniq = new Dictionary<string, ApiCtor>(StringComparer.Ordinal);
                foreach (var c in t.Ctors)
                {
                    var key = "new(" + string.Join(",", c.Params.Select(p => NormKey(MapType(p.Type, roots, roots[0], knownGlobal)))) + ")";
                    if (!uniq.ContainsKey(key)) uniq[key] = c;
                }

                var keys = uniq.Keys.OrderBy(x => x, StringComparer.Ordinal).ToList();
                var over = keys.Count > 1;

                foreach (var k in keys)
                {
                    var c = uniq[k];
                    if (!string.IsNullOrWhiteSpace(c.Summary))
                        sb.Append("    /** ").Append(EscDoc(c.Summary)).Append(" */\n");

                    sb.Append("    ").Append(over ? "overload " : "")
                      .Append("function new(").Append(FormatParams(c.Params, roots, roots[0], knownGlobal)).Append("):Void;\n");

                    memberCount++;
                }
            }

            foreach (var p in t.Props)
            {
                var n = SanitizeMemberName(p.Name);
                if (n.Length == 0) continue;

                static string MapAccessor(MethodInfo? m)
                {
                    if (m == null) return "never";
                    if (m.IsPublic) return "default";
                    if (m.IsFamily || m.IsFamilyOrAssembly) return "null";
                    return "never";
                }

                static string MapFieldAcc(ApiProp p)
                {
                    var r = p.IsProtected ? "null" : "default";
                    var w = (p.IsReadOnly || p.IsConst) ? "never" : (p.IsProtected ? "null" : "default");
                    return r + "," + w;
                }

                static string MapPropertyAcc(ApiProp p)
                {
                    var gm = p.GetMethod;
                    var sm = p.SetMethod;
                    if (gm == null && sm == null) return "default";
                    var r = MapAccessor(gm);
                    var w = MapAccessor(sm);
                    return r + "," + w;
                }

                bool canWrite = p.IsField ? (!p.IsReadOnly && !p.IsConst) : (p.SetMethod != null);
                bool canRead = p.IsField ? true : (p.GetMethod != null);
                var hxType = MapType(p.Type, roots, roots[0], knownGlobal);

                if (!string.IsNullOrWhiteSpace(p.Summary))
                    sb.Append("    /** ").Append(EscDoc(p.Summary)).Append(" */\n");

                if (p.IsProtected)
                    sb.Append("    @:protected\n");

                if (p.IsConst)
                {
                    sb.Append("    ");
                    if (p.IsStatic) sb.Append("static ");
                    sb.Append("final ").Append(n).Append(":").Append(hxType).Append(";\n");
                    memberCount++;
                    continue;
                }

                if (t.IsValueType && canWrite && !p.IsStatic)
                {
                    var readAcc = canRead ? (p.IsField ? (p.IsProtected ? "null" : "default") : MapAccessor(p.GetMethod)) : "never";
                    var acc2 = readAcc + ",set";

                    sb.Append("    ");
                    if (p.IsStatic) sb.Append("static ");
                    sb.Append("var ").Append(n).Append("(").Append(acc2).Append("):").Append(hxType).Append(";\n");

                    sb.Append("\n");
                    sb.Append("    private inline function set_").Append(n).Append("(value:").Append(hxType).Append("):").Append(hxType).Append(" {\n");
                    sb.Append("        var __value:").Append(hxType).Append(" = cast value;\n");
                    sb.Append("        return untyped __cs__(\"{0}.").Append(Esc(p.Name)).Append(" = {1}\", this, __value);\n");
                    sb.Append("    }\n\n");

                    memberCount++;
                    continue;
                }

                var acc = p.IsField ? MapFieldAcc(p) : MapPropertyAcc(p);

                sb.Append("    ");
                if (p.IsStatic) sb.Append("static ");

                if (p.IsReadOnly || (!p.IsField && p.SetMethod == null && p.GetMethod != null))
                    sb.Append("var ").Append(n).Append("(").Append(p.IsField ? (p.IsProtected ? "null,never" : "default,never") : acc).Append("):").Append(hxType).Append(";\n");
                else
                    sb.Append("var ").Append(n).Append("(").Append(acc).Append("):").Append(hxType).Append(";\n");

                memberCount++;
            }

            var byName = new Dictionary<string, List<ApiMethod>>(StringComparer.Ordinal);
            foreach (var m in t.Methods)
            {
                if (!byName.TryGetValue(m.Name, out var arr)) { arr = new List<ApiMethod>(); byName[m.Name] = arr; }
                arr.Add(m);
            }

            foreach (var name in byName.Keys.OrderBy(x => x, StringComparer.Ordinal))
            {
                var group = byName[name];
                var uniq = new Dictionary<string, ApiMethod>(StringComparer.Ordinal);

                foreach (var m in group)
                {
                    var key = SigKey(m, roots, roots[0], knownGlobal);
                    if (!uniq.ContainsKey(key)) uniq[key] = m;
                }

                var list = uniq.Values.ToList();
                if (list.Count == 0) continue;

                list.Sort((a, b) =>
                {
                    var d = a.Params.Count.CompareTo(b.Params.Count);
                    if (d != 0) return d;
                    return string.Compare(SigKey(a, roots, roots[0], knownGlobal), SigKey(b, roots, roots[0], knownGlobal), StringComparison.Ordinal);
                });

                var over = list.Count > 1;
                var doc = list.Select(x => x.Summary).FirstOrDefault(x => !string.IsNullOrWhiteSpace(x)) ?? "";
                if (!string.IsNullOrWhiteSpace(doc))
                    sb.Append("    /** ").Append(EscDoc(doc)).Append(" */\n");

                foreach (var m in list)
                {
                    sb.Append("    ");
                    if (m.IsProtected) sb.Append("@:protected ");
                    if (m.IsStatic) sb.Append("static ");
                    if (over) sb.Append("overload ");

                    sb.Append("function ").Append(SanitizeMemberName(m.Name));
                    if (m.MethodGenericParams.Count > 0) sb.Append("<").Append(string.Join(",", m.MethodGenericParams)).Append(">");

                    sb.Append("(").Append(FormatParams(m.Params, roots, roots[0], knownGlobal)).Append("):")
                      .Append(MapType(m.ReturnType, roots, roots[0], knownGlobal)).Append(";\n");

                    memberCount++;
                }
            }

            sb.Append("}\n");
            File.WriteAllText(Path.Combine(dir, hxName + ".hx"), sb.ToString(), Encoding.UTF8);
            typeCount++;
        }

        var stubCount = 0;

        if (GenerateExternalStubs)
        {
            var primary = roots[0];

            foreach (var st in ExternalStubs.Values.OrderBy(x => x.CsNative, StringComparer.Ordinal))
            {
                if (generatedNative.Contains(st.CsNative)) continue;

                var pkgPath = st.HxPackage.Replace('.', Path.DirectorySeparatorChar);
                var isSandboxPkg =
                    st.HxPackage.Equals(primary.Lower, StringComparison.Ordinal) ||
                    st.HxPackage.StartsWith(primary.Lower + ".", StringComparison.Ordinal);

                var baseDir = isSandboxPkg ? Path.Combine(outRoot, primary.Lower) : outRoot;
                var dir = Path.Combine(baseDir, pkgPath);

                Directory.CreateDirectory(dir);

                var file = Path.Combine(dir, st.HxName + ".hx");
                if (File.Exists(file)) continue;

                var sb = new StringBuilder(256);
                sb.Append("package ").Append(st.HxPackage).Append(";\n\n");
                sb.Append("@:native(\"").Append(Esc(st.CsNative)).Append("\")\n");

                if (st.GenericArity > 0)
                {
                    var gs = Enumerable.Range(1, st.GenericArity).Select(i => "T" + i);
                    sb.Append("extern class ").Append(st.HxName).Append("<").Append(string.Join(",", gs)).Append("> {\n}\n");
                }
                else
                {
                    sb.Append("extern class ").Append(st.HxName).Append(" {\n}\n");
                }

                File.WriteAllText(file, sb.ToString(), Encoding.UTF8);
                stubCount++;
            }
        }

        return $"Externs generated: Types={typeCount} | Members={memberCount} | Stubs={stubCount}";
    }

    private static Root PickRootForType(ApiType t, Root[] roots)
    {
        if (!string.IsNullOrWhiteSpace(t.Namespace))
        {
            var best = roots[0];
            var bestLen = -1;

            foreach (var r in roots)
            {
                if (t.Namespace == r.Name)
                {
                    if (r.Name.Length > bestLen) { best = r; bestLen = r.Name.Length; }
                    continue;
                }

                if (t.Namespace.StartsWith(r.Name + ".", StringComparison.Ordinal))
                {
                    if (r.Name.Length > bestLen) { best = r; bestLen = r.Name.Length; }
                }
            }

            if (bestLen >= 0) return best;
        }

        return roots[0];
    }

    private static List<ApiType> CollectTypes(IEnumerable<Assembly> assemblies, Root[] roots, DocStore docs)
    {
        var list = new List<ApiType>();

        foreach (var a in assemblies)
        {
            var asmName = a.GetName().Name ?? "";
            var asmIsRoot = roots.Any(r => asmName.StartsWith(r.Name, StringComparison.OrdinalIgnoreCase));

            Type[] ts;

            try { ts = a.GetTypes(); }
            catch (ReflectionTypeLoadException ex)
            {
                ts = ex.Types.Where(static t => t != null).Select(static t => t!).ToArray();
            }
            catch { continue; }

            foreach (var t in ts)
            {
                if (!(t.IsPublic || t.IsNestedPublic)) continue;
                if (t.IsPointer) continue;
                if (IsCompilerGeneratedType(t)) continue;

                var ns = t.Namespace ?? "";
                var nsIsRoot = IsInRootNamespace(ns, roots);
                if (!(nsIsRoot || (asmIsRoot && ns.Length == 0))) continue;

                var api = BuildApiType(t, docs);
                if (api != null) list.Add(api);
            }
        }

        return list
            .GroupBy(x => x.NativeFullName, StringComparer.Ordinal)
            .Select(g => g.First())
            .ToList();
    }

    private static bool IsInRootNamespace(string ns, Root[] roots)
    {
        if (string.IsNullOrWhiteSpace(ns)) return false;
        foreach (var r in roots)
            if (ns == r.Name || ns.StartsWith(r.Name + ".", StringComparison.Ordinal))
                return true;
        return false;
    }

    private static ApiType? BuildApiType(Type t, DocStore docs)
    {
        var name = t.Name;
        var full = t.FullName ?? name;

        if (string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(full)) return null;
        if (BadTypeName(full) || BadTypeName(name)) return null;

        var clrFull = t.FullName ?? t.Name ?? "System.Object";
        var schemaFull = FormatTypeLikeSchema(t);

        var lastDot = schemaFull.LastIndexOf(".", StringComparison.Ordinal);
        var schemaNs = lastDot >= 0 ? schemaFull.Substring(0, lastDot) : "";
        var schemaName = lastDot >= 0 ? schemaFull.Substring(lastDot + 1) : schemaFull;

        var api = new ApiType
        {
            NativeFullName = clrFull,
            Namespace = schemaNs,
            Name = StripTick(schemaName),
            Summary = docs.TypeSummary(t),
            IsEnum = t.IsEnum,
            IsValueType = t.IsValueType && !t.IsEnum,
            IsFinal = t.IsSealed && !t.IsEnum
        };

        api.TypeGenericParams = GetTypeGenericParams(t);

        if (api.IsEnum)
        {
            api.EnumUnderlying = FormatTypeLikeSchema(Enum.GetUnderlyingType(t));
            api.EnumMembers = t.GetFields(BindingFlags.Public | BindingFlags.Static)
                .Select(f => f.Name)
                .Where(x => !string.IsNullOrWhiteSpace(x) && !BadMemberName(x))
                .ToList()!;
            return api;
        }

        foreach (var c in t.GetConstructors(BindingFlags.Public | BindingFlags.Instance))
        {
            var ps = c.GetParameters();
            var pars = new List<ApiParam>(ps.Length);

            for (int i = 0; i < ps.Length; i++)
            {
                var p = ps[i];
                var pn = p.Name;
                if (string.IsNullOrWhiteSpace(pn)) pn = "arg" + i;
                pars.Add(new ApiParam(pn, FormatTypeLikeSchema(p.ParameterType)));
            }

            api.Ctors.Add(new ApiCtor { Params = pars, Summary = docs.MethodSummary(c) });
        }

        foreach (var p in t.GetProperties(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static))
        {
            var get = p.GetGetMethod(true);
            var set = p.GetSetMethod(true);

            var visible =
                (get != null && (get.IsPublic || get.IsFamily || get.IsFamilyOrAssembly)) ||
                (set != null && (set.IsPublic || set.IsFamily || set.IsFamilyOrAssembly));

            if (!visible) continue;

            var isProtected =
                (get != null && (get.IsFamily || get.IsFamilyOrAssembly) && !get.IsPublic) ||
                (set != null && (set.IsFamily || set.IsFamilyOrAssembly) && !set.IsPublic);

            api.Props.Add(new ApiProp
            {
                Name = p.Name,
                Type = FormatTypeLikeSchema(p.PropertyType),
                GetMethod = get,
                SetMethod = set,
                IsProtected = isProtected,
                IsStatic = (get?.IsStatic ?? set?.IsStatic) ?? false,
                IsReadOnly = set == null && get != null,
                IsConst = false,
                IsField = false,
                Summary = docs.PropSummary(p)
            });
        }

        foreach (var f in t.GetFields(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static))
        {
            var visible = f.IsPublic || f.IsFamily || f.IsFamilyOrAssembly;
            if (!visible) continue;

            var fn = f.Name ?? "";
            if (BadMemberName(fn)) continue;
            if (fn.StartsWith("<", StringComparison.Ordinal)) continue;

            api.Props.Add(new ApiProp
            {
                Name = fn,
                Type = FormatTypeLikeSchema(f.FieldType),
                GetMethod = null,
                SetMethod = null,
                IsProtected = (f.IsFamily || f.IsFamilyOrAssembly) && !f.IsPublic,
                IsStatic = f.IsStatic,
                IsReadOnly = f.IsInitOnly,
                IsConst = f.IsLiteral,
                IsField = true,
                Summary = ""
            });
        }

        foreach (var m in t.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static))
        {
            if (m.IsSpecialName) continue;
            if (m.DeclaringType != t) continue;

            var isPublic = m.IsPublic;
            var isProtected = (m.IsFamily || m.IsFamilyOrAssembly) && !m.IsPublic;
            if (!isPublic && !isProtected) continue;

            var mn = m.Name;
            if (string.IsNullOrWhiteSpace(mn) || BadMemberName(mn)) continue;

            var ps = m.GetParameters();
            var pars = new List<ApiParam>(ps.Length);

            for (int i = 0; i < ps.Length; i++)
            {
                var p = ps[i];
                var pn = p.Name;
                if (string.IsNullOrWhiteSpace(pn)) pn = "arg" + i;
                pars.Add(new ApiParam(pn, FormatTypeLikeSchema(p.ParameterType)));
            }

            var mg = m.IsGenericMethodDefinition
                ? m.GetGenericArguments().Select(x => x.Name).Where(x => !string.IsNullOrWhiteSpace(x)).ToList()
                : new List<string>();

            api.Methods.Add(new ApiMethod
            {
                Name = mn,
                ReturnType = FormatTypeLikeSchema(m.ReturnType),
                IsStatic = m.IsStatic,
                IsProtected = isProtected,
                Params = pars,
                MethodGenericParams = mg,
                Summary = docs.MethodSummary(m)
            });
        }

        return api;
    }

    private static List<string> GetTypeGenericParams(Type t)
    {
        try
        {
            if (!t.IsGenericType && !t.IsGenericTypeDefinition) return new List<string>();
            return t.GetGenericArguments().Select(x => x.Name).Where(x => !string.IsNullOrWhiteSpace(x)).ToList();
        }
        catch { return new List<string>(); }
    }

    private static string BuildHaxePackage(Root root, string ns)
    {
        if (string.IsNullOrWhiteSpace(ns)) return root.Lower;
        ns = ns.Trim();
        if (ns == root.Name) return root.Lower;
        if (ns.StartsWith(root.Name + ".", StringComparison.Ordinal))
            return root.Lower + "." + ns.Substring(root.Name.Length + 1).ToLowerInvariant();
        return root.Lower + "." + ns.ToLowerInvariant();
    }

    private static string BuildOutDir(string outRoot, Root root, string ns)
    {
        var baseDir = Path.Combine(outRoot, root.Lower);
        if (string.IsNullOrWhiteSpace(ns) || ns == root.Name) return baseDir;

        if (ns.StartsWith(root.Name + ".", StringComparison.Ordinal))
        {
            var rest = ns.Substring(root.Name.Length + 1).ToLowerInvariant();
            return Path.Combine(baseDir, rest.Replace('.', Path.DirectorySeparatorChar));
        }

        return Path.Combine(baseDir, ns.ToLowerInvariant().Replace('.', Path.DirectorySeparatorChar));
    }

    private static string SigKey(ApiMethod m, Root[] roots, Root primary, HashSet<string> knownGlobal)
    {
        var pars = string.Join(",", m.Params.Select(p => NormKey(MapType(p.Type, roots, primary, knownGlobal))));
        var gp = string.Join(",", m.MethodGenericParams);

        return (m.IsStatic ? "S" : "I")
            + (m.IsProtected ? "P" : "U")
            + "|" + m.Name
            + "|<" + gp + ">|" + MapType(m.ReturnType, roots, primary, knownGlobal)
            + "|(" + pars + ")";
    }

    private static string NormKey(string t)
    {
        t = (t ?? "").Trim();
        if (t.StartsWith("Null<", StringComparison.Ordinal) && t.EndsWith(">", StringComparison.Ordinal))
            return t.Substring(5, t.Length - 6).Trim();
        return t;
    }

    private static string FormatParams(List<ApiParam> pars, Root[] roots, Root primary, HashSet<string> knownGlobal)
    {
        if (pars.Count == 0) return "";

        var used = new HashSet<string>(StringComparer.Ordinal);
        var outList = new List<string>(pars.Count);

        for (int i = 0; i < pars.Count; i++)
        {
            var raw = pars[i].Name;
            var n = SanitizeMemberName(string.IsNullOrWhiteSpace(raw) ? ("arg" + i) : raw.Trim());
            var baseName = n;
            var k = 2;

            while (!used.Add(n)) { n = baseName + k; k++; }
            outList.Add(n + ":" + MapType(pars[i].Type, roots, primary, knownGlobal));
        }

        return string.Join(", ", outList);
    }

    private static string MapType(string csType, Root[] roots, Root primary, HashSet<string> knownGlobal) =>
        MapTypeInternal(csType, roots, primary, knownGlobal, allowImplicitRootGenerics: true);

    private static string MapTypeInternal(string csType, Root[] roots, Root primary, HashSet<string> knownGlobal, bool allowImplicitRootGenerics)
    {
        csType = (csType ?? "").Trim();
        if (csType.Length == 0) return "Dynamic";

        if (allowImplicitRootGenerics && csType.IndexOf("<", StringComparison.Ordinal) < 0)
        {
            var baseKey = StripTickSuffix(csType);
            if (IsRootQualified(baseKey, roots))
            {
                var arity = GetRootGenericArityRuntime(baseKey);
                if (arity > 0)
                {
                    var mappedBase = MapTypeInternal(baseKey, roots, primary, knownGlobal, allowImplicitRootGenerics: false);
                    if (mappedBase != "Dynamic")
                        return mappedBase + "<" + string.Join(",", Enumerable.Repeat("Dynamic", arity)) + ">";
                }
            }
        }

        if (csType.EndsWith("[]", StringComparison.Ordinal))
            return "Array<" + MapTypeInternal(csType.Substring(0, csType.Length - 2), roots, primary, knownGlobal, true) + ">";

        if (csType.StartsWith("System.Nullable<", StringComparison.Ordinal) && csType.EndsWith(">", StringComparison.Ordinal))
        {
            var inner = ExtractGenericInner(csType);
            return "Null<" + MapTypeInternal(inner, roots, primary, knownGlobal, true) + ">";
        }

        if (TryMapPrimitive(csType, out var prim)) return prim;
        if (IsGenericParamName(csType)) return csType;

        var lt = csType.IndexOf("<", StringComparison.Ordinal);
        if (lt >= 0 && csType.EndsWith(">", StringComparison.Ordinal))
        {
            var baseName = csType.Substring(0, lt).Trim();
            var args = SplitGenericArgs(ExtractGenericInner(csType));

            if (GenerateExternalStubs && IsExternalQualified(baseName, roots))
            {
                var dot2 = baseName.LastIndexOf(".", StringComparison.Ordinal);
                if (dot2 <= 0) return "Dynamic";

                var ns2 = baseName.Substring(0, dot2);
                var nm2 = baseName.Substring(dot2 + 1);

                var hxPkg2 = ns2.ToLowerInvariant();
                var baseHxName = SanitizeTypeName(nm2);

                var baseKey = StripTickSuffix(NormalizeFullName(baseName));
                var needSuffix =
                    ExternalBaseAritiesUsed.TryGetValue(baseKey, out var set) &&
                    (set.Count > 1 || set.Contains(0));

                var hxName2 = needSuffix ? (baseHxName + args.Count) : baseHxName;
                RegisterExternalStub(baseName, hxPkg2, hxName2, args.Count);

                var mappedArgs = string.Join(",", args.Select(a => MapTypeInternal(a, roots, primary, knownGlobal, true)));
                return hxPkg2 + "." + hxName2 + "<" + mappedArgs + ">";
            }

            var mappedBase = MapTypeInternal(baseName, roots, primary, knownGlobal, allowImplicitRootGenerics: false);
            if (mappedBase == "Dynamic") return "Dynamic";

            var mappedArgs2 = string.Join(",", args.Select(a => MapTypeInternal(a, roots, primary, knownGlobal, true)));
            return mappedBase + "<" + mappedArgs2 + ">";
        }

        var dot = csType.LastIndexOf(".", StringComparison.Ordinal);
        if (dot < 0)
        {
            if (knownGlobal.Contains(csType)) return SanitizeTypeName(csType);
            return "Dynamic";
        }

        var ns = csType.Substring(0, dot);
        var name = csType.Substring(dot + 1);

        foreach (var r in roots)
        {
            if (ns == r.Name)
                return ApplyImplicitRootGenericArgs(r.Lower + "." + SanitizeTypeName(name), csType, allowImplicitRootGenerics);

            if (ns.StartsWith(r.Name + ".", StringComparison.Ordinal))
            {
                var rest = ns.Substring(r.Name.Length + 1).ToLowerInvariant();
                return ApplyImplicitRootGenericArgs(r.Lower + "." + rest + "." + SanitizeTypeName(name), csType, allowImplicitRootGenerics);
            }
        }

        if (!GenerateExternalStubs) return "Dynamic";

        var hxPkg = ns.ToLowerInvariant();
        var hxName = SanitizeTypeName(name);

        RegisterExternalStub(csType, hxPkg, hxName, 0);
        return hxPkg + "." + hxName;
    }

    private static string ApplyImplicitRootGenericArgs(string mapped, string csType, bool allow)
    {
        if (!allow) return mapped;
        if (RootGenericArity.TryGetValue(csType, out var arity) && arity > 0)
            return mapped + "<" + string.Join(",", Enumerable.Repeat("Dynamic", arity)) + ">";
        return mapped;
    }

    private static void RegisterExternalStub(string csBaseFull, string hxPkg, string hxName, int arity)
    {
        csBaseFull = NormalizeFullName(csBaseFull);
        var csNative = (arity > 0) ? (csBaseFull + "`" + arity) : csBaseFull;

        if (ExternalStubs.TryGetValue(csNative, out var ex))
        {
            ex.HxPackage = hxPkg;
            ex.HxName = hxName;
            ex.GenericArity = Math.Max(ex.GenericArity, arity);
            return;
        }

        ExternalStubs[csNative] = new StubType { CsNative = csNative, HxPackage = hxPkg, HxName = hxName, GenericArity = arity };
    }

    private static string ExtractGenericInner(string s)
    {
        var lt = s.IndexOf("<", StringComparison.Ordinal);
        var gt = s.LastIndexOf(">", StringComparison.Ordinal);
        if (lt < 0 || gt <= lt) return "";
        return s.Substring(lt + 1, gt - lt - 1);
    }

    private static List<string> SplitGenericArgs(string inner)
    {
        inner ??= "";
        var outList = new List<string>();
        var buf = new StringBuilder();
        var depth = 0;

        for (int i = 0; i < inner.Length; i++)
        {
            var ch = inner[i];

            if (ch == '<') { depth++; buf.Append(ch); continue; }
            if (ch == '>') { depth--; buf.Append(ch); continue; }

            if (ch == ',' && depth == 0)
            {
                var s = buf.ToString().Trim();
                if (s.Length != 0) outList.Add(s);
                buf.Clear();
                continue;
            }

            buf.Append(ch);
        }

        var last = buf.ToString().Trim();
        if (last.Length != 0) outList.Add(last);
        return outList;
    }

    private static string FormatTypeLikeSchema(Type t)
    {
        if (t.IsByRef)
        {
            var et = t.GetElementType();
            if (et == null) return "System.Object";
            t = et;
        }

        if (t.IsArray)
        {
            var et = t.GetElementType();
            if (et == null) return "System.Object[]";
            return FormatTypeLikeSchema(et) + "[]";
        }

        if (t.IsGenericParameter) return t.Name;

        if (t.IsGenericType)
        {
            var def = t.IsGenericTypeDefinition ? t : t.GetGenericTypeDefinition();
            var defName = NormalizeFullName(def.FullName ?? def.Name ?? "System.Object");
            defName = StripTick(defName);

            var args = t.GetGenericArguments();
            if (args.Length == 0) return defName;

            return defName + "<" + string.Join(",", args.Select(FormatTypeLikeSchema)) + ">";
        }

        return NormalizeFullName(t.FullName ?? t.Name ?? "System.Object");
    }

    private static bool IsCompilerGeneratedType(Type t)
    {
        if (t.IsDefined(typeof(CompilerGeneratedAttribute), inherit: false)) return true;
        var name = t.Name ?? "";
        if (name.StartsWith("<", StringComparison.Ordinal)) return true;
        if (name.Contains("DisplayClass", StringComparison.Ordinal) || name.Contains("AnonStorey", StringComparison.Ordinal)) return true;
        return false;
    }

    private static bool BadTypeName(string name)
    {
        if (string.IsNullOrWhiteSpace(name)) return true;
        if (name.Contains("$", StringComparison.Ordinal)) return true;
        if (name.Contains(".<", StringComparison.Ordinal) || name.Contains("+<", StringComparison.Ordinal)) return true;
        if (name.Contains("\\u003C", StringComparison.Ordinal) || name.Contains("\\u003E", StringComparison.Ordinal)) return true;
        return false;
    }

    private static bool BadMemberName(string name)
    {
        if (string.IsNullOrWhiteSpace(name)) return true;
        if (name[0] == '<') return true;
        if (name.Contains("<", StringComparison.Ordinal) || name.Contains(">", StringComparison.Ordinal)) return true;
        return false;
    }

    private static string NormalizeFullName(string s) => (s ?? "").Trim().Replace('+', '.');

    private static string StripTick(string s)
    {
        var tick = s.IndexOf('`');
        return tick >= 0 ? s.Substring(0, tick) : s;
    }

    private static string StripTickSuffix(string s)
    {
        s = (s ?? "").Trim();
        var tick = s.IndexOf('`');
        return tick >= 0 ? s.Substring(0, tick) : s;
    }

    private static string SanitizeTypeName(string name)
    {
        name = StripTick((name ?? "").Trim());
        var lt = name.IndexOf("<", StringComparison.Ordinal);
        if (lt >= 0) name = name.Substring(0, lt);

        var sb = new StringBuilder();
        for (int i = 0; i < name.Length; i++)
        {
            var c = name[i];
            var isAZ = (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
            var is09 = (c >= '0' && c <= '9');
            if (isAZ || is09 || c == '_') sb.Append(c);
        }

        var s = sb.ToString();
        if (s.Length == 0) s = "Type";
        if (char.IsDigit(s[0])) s = "_" + s;
        return s;
    }

    private static string SanitizeMemberName(string name)
    {
        name = (name ?? "").Trim();
        if (name.Length == 0) return "";
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

    private static bool IsGenericParamName(string s)
    {
        s = (s ?? "").Trim();
        if (s.Length == 0) return false;
        if (s == "T") return true;

        if (s.Length == 1)
        {
            var c = s[0];
            return c >= 'A' && c <= 'Z';
        }

        if (s[0] == 'T')
        {
            for (int i = 1; i < s.Length; i++)
            {
                var c = s[i];
                var ok = (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9');
                if (!ok) return false;
            }
            return true;
        }

        return false;
    }

    private static string Esc(string s) =>
        (s ?? "").Replace("\\", "\\\\", StringComparison.Ordinal).Replace("\"", "\\\"", StringComparison.Ordinal);

    private static string EscDoc(string s)
    {
        s ??= "";
        s = s.Replace("\r", " ").Replace("\n", " ").Trim();
        while (s.Contains("  ", StringComparison.Ordinal)) s = s.Replace("  ", " ", StringComparison.Ordinal);
        return s.Replace("*/", "* /", StringComparison.Ordinal).Trim();
    }

    private static bool IsExternalQualified(string full, Root[] roots)
    {
        full = (full ?? "").Trim();
        if (full.Length == 0) return false;
        if (!full.Contains(".", StringComparison.Ordinal)) return false;

        foreach (var r in roots)
            if (full == r.Name || full.StartsWith(r.Name + ".", StringComparison.Ordinal))
                return false;

        return true;
    }

    private static bool IsRootQualified(string full, Root[] roots)
    {
        full = (full ?? "").Trim();
        if (full.Length == 0) return false;

        foreach (var r in roots)
            if (full == r.Name || full.StartsWith(r.Name + ".", StringComparison.Ordinal))
                return true;

        return false;
    }

    private static int GetRootGenericArityRuntime(string schemaFullNoTick)
    {
        schemaFullNoTick = StripTickSuffix(schemaFullNoTick);
        if (RootArityRuntimeCache.TryGetValue(schemaFullNoTick, out var cached)) return cached;

        var assemblies = AppDomain.CurrentDomain.GetAssemblies();

        for (int n = 1; n <= 16; n++)
        {
            var clrName = schemaFullNoTick + "`" + n;

            for (int i = 0; i < assemblies.Length; i++)
            {
                try
                {
                    var a = assemblies[i];
                    if (a.IsDynamic) continue;

                    var t = a.GetType(clrName, throwOnError: false, ignoreCase: false);
                    if (t != null && t.IsGenericTypeDefinition && t.GetGenericArguments().Length == n)
                    {
                        RootArityRuntimeCache[schemaFullNoTick] = n;
                        return n;
                    }
                }
                catch { }
            }
        }

        RootArityRuntimeCache[schemaFullNoTick] = 0;
        return 0;
    }

    private static void CollectExternalBaseAritiesUsed(List<ApiType> types, Root[] roots)
    {
        void Add(string baseFull, int arity)
        {
            baseFull = StripTickSuffix(NormalizeFullName(baseFull));
            if (!ExternalBaseAritiesUsed.TryGetValue(baseFull, out var set))
            {
                set = new HashSet<int>();
                ExternalBaseAritiesUsed[baseFull] = set;
            }
            set.Add(arity);
        }

        void Scan(string s)
        {
            s = (s ?? "").Trim();
            if (s.Length == 0) return;

            if (s.EndsWith("[]", StringComparison.Ordinal)) { Scan(s.Substring(0, s.Length - 2)); return; }

            if (s.StartsWith("System.Nullable<", StringComparison.Ordinal) && s.EndsWith(">", StringComparison.Ordinal))
            {
                Scan(ExtractGenericInner(s));
                return;
            }

            var lt = s.IndexOf("<", StringComparison.Ordinal);
            if (lt >= 0 && s.EndsWith(">", StringComparison.Ordinal))
            {
                var baseName = s.Substring(0, lt).Trim();
                var args = SplitGenericArgs(ExtractGenericInner(s));

                if (IsExternalQualified(baseName, roots)) Add(baseName, args.Count);
                foreach (var a in args) Scan(a);
                return;
            }

            if (IsExternalQualified(s, roots)) Add(s, 0);
        }

        foreach (var t in types)
        {
            Scan(t.EnumUnderlying);

            foreach (var c in t.Ctors)
                foreach (var p in c.Params)
                    Scan(p.Type);

            foreach (var p in t.Props)
                Scan(p.Type);

            foreach (var m in t.Methods)
            {
                Scan(m.ReturnType);
                foreach (var p in m.Params) Scan(p.Type);
            }
        }
    }
}
