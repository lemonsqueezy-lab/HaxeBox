package hrazor;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import hrazor.HrazorParser.HrzAttr;
import hrazor.HrazorParser.HrzNode;
import hrazor.HrazorParser.HrzTextPart;
import hrazor.HrazorParser.HrzSwitchCase;

using StringTools;

private typedef CodeSplit = {
	var fields:Array<Field>;
	var init:Expr;
}

private typedef DeclMods = {
	var access:Null<String>;
	var isStatic:Bool;
	var isInline:Bool;
	var isOverride:Bool;
}
#end

class HrazorGeneric {
	#if macro
	public static function build():Array<Field> {
		var pos = Context.currentPos();
		var fields = Context.getBuildFields();
		var fileExpr = extractFileExprFromInterface(pos);
		var filePath = extractPath(fileExpr, pos);
		var content = try {
			sys.io.File.getContent(filePath);
		} catch (e:Dynamic) {
			Context.error("Failed to read hrazor file: " + filePath + " (" + e + ")", pos);
			return fields;
		}

		var doc = HrazorParser.parse(content, filePath, pos);

		var existing = new Map<String, Bool>();
		for (f in fields)
			existing.set(f.name, true);

		var importMap = buildImportMap(doc.imports, pos);
		var split = parseCodeToFieldsAndInit(doc.code, pos, doc.imports, doc.usings, importMap);
		for (f in split.fields) {
			if (existing.exists(f.name)) {
				Context.error('Field already exists on class: ' + f.name, f.pos);
			} else {
				existing.set(f.name, true);
				fields.push(f);
			}
		}

		var buildExpr = buildUI(doc.root, pos, doc.imports, doc.usings, importMap);
		if (!existing.exists("__hrazorBuild")) {
			fields.push({
				name: "__hrazorBuild",
				access: [APrivate],
				kind: FFun({
					args: [],
					ret: macro:Void,
					expr: buildExpr,
					params: []
				}),
				pos: pos
			});
			existing.set("__hrazorBuild", true);
		}

		var hasInit = switch (split.init.expr) {
			case EBlock(exprs): exprs.length > 0;
			default: true;
		};
		if (hasInit && !existing.exists("__hrazorInit")) {
			fields.push({
				name: "__hrazorInit",
				access: [APrivate],
				kind: FFun({
					args: [],
					ret: macro:Void,
					expr: split.init,
					params: []
				}),
				pos: pos
			});
			existing.set("__hrazorInit", true);
		}

		var ctorIndex = -1;
		for (i in 0...fields.length) {
			if (fields[i].name == "new") {
				ctorIndex = i;
				break;
			}
		}
		if (ctorIndex == -1) {
			var ctorExprs:Array<Expr> = [macro super()];
			if (hasInit)
				ctorExprs.push(macro this.__hrazorInit());
			ctorExprs.push(macro this.__hrazorBuild());
			fields.push({
				name: "new",
				access: [APublic],
				kind: FFun({
					args: [],
					ret: null,
					expr: macro $b{ctorExprs},
					params: []
				}),
				pos: pos
			});
		} else {
			var f = fields[ctorIndex];
			switch (f.kind) {
				case FFun(fun):
					var initCall = hasInit ? macro this.__hrazorInit() : null;
					var buildCall = macro this.__hrazorBuild();
					f.kind = FFun({
						args: fun.args,
						ret: fun.ret,
						params: fun.params,
						expr: injectCtor(fun.expr, initCall, buildCall)
					});
					fields[ctorIndex] = f;
				default:
			}
		}

		if (doc.inherits != null && doc.inherits.trim().length > 0) {
			applyInherits(doc.inherits.trim(), doc.imports, doc.usings, pos);
		}
		if (doc.namespace != null && doc.namespace.trim().length > 0) {
			Context.warning("@namespace is currently ignored in HrazorGeneric (uses caller package)", pos);
		}

		var lc = Context.getLocalClass();
		if (lc != null) {
			var cls = lc.get();
			if (!cls.meta.has(":nativeGen"))
				cls.meta.add(":nativeGen", [], pos);
			if (!cls.meta.has(":native"))
				cls.meta.add(":native", [macro $v{cls.module}], pos);
		}

		return fields;
	}

	static function extractPath(e:Expr, pos:Position):String {
		var raw = switch (e.expr) {
			case EConst(CString(s, _)): s;
			case _:
				Context.error('HrazorComponent expects string literal file path, e.g. HrazorComponent<"ui/test.razor">', pos);
				return "";
		};

		try {
			return Context.resolvePath(raw);
		} catch (e:Dynamic) {
			Context.error("File not found: " + raw, pos);
			return "";
		}
	}

	static function extractFileExprFromInterface(pos:Position):Expr {
		var lc = Context.getLocalClass();
		if (lc == null) {
			Context.error("No local class in HrazorGeneric", pos);
			return macro "";
		}
		var cls = lc.get();
		for (it in cls.interfaces) {
			var i = it.t.get();
			if (i.name == "IHrazorComponent" && i.pack.join(".") == "hrazor") {
				if (it.params == null || it.params.length != 1) {
					Context.error('IHrazorComponent expects one string literal: IHrazorComponent<"file.razor">', pos);
					return macro "";
				}
				return switch (it.params[0]) {
					case TInst(_.get() => {kind: KExpr(e)}, _):
						e;
					default:
						Context.error('IHrazorComponent expects one string literal: IHrazorComponent<"file.razor">', pos);
						macro "";
				}
			}
		}
		var sc = cls.superClass;
		if (sc == null || sc.params == null || sc.params.length != 1) {
			Context.error('Missing IHrazorComponent<"file.razor"> or HrazorComponent<"file.razor"> on class', pos);
			return macro "";
		}
		return switch (sc.params[0]) {
			case TInst(_.get() => {kind: KExpr(e)}, _):
				e;
			default:
				Context.error('HrazorComponent expects one string literal: HrazorComponent<"file.razor">', pos);
				macro "";
		}
	}

	static function parseCodeToFieldsAndInit(code:String, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):CodeSplit {
		return Context.withImports(imports, usings, function() {
			var raw = (code == null) ? "" : code;

			var declMods = collectDeclModifiers(raw);

			// Token-aware preprocess: make it valid inside a { ... } block.
			var pre = stripTopLevelModifiers(raw);

			var parsed:Expr;
			try {
				parsed = Context.parse("{\n" + pre + "\n}", pos);
			} catch (e:Dynamic) {
				Context.error("Failed to parse @code as Haxe block: " + e, pos);
				return {fields: [], init: macro {}};
			}
			parsed = qualifyExpr(parsed, importMap, pos);

			var outFields:Array<Field> = [];
			var initExprs:Array<Expr> = [];

			function pushVarFields(vl:Array<Var>, forceStatic:Bool = false):Void {
				for (v in vl) {
					var acc = buildAccess(declMods, v.name, forceStatic, false, false);
					var vtype = qualifyComplexType(v.type, importMap);
					outFields.push({
						name: v.name,
						access: acc,
						kind: FVar(vtype, v.expr),
						pos: v.expr != null ? v.expr.pos : pos
					});
				}
			}

			function pushFunField(name:String, f:Function, forceStatic:Bool, forceInline:Bool, forceOverride:Bool, fpos:Position):Void {
				var fn = qualifyFunctionTypes(f, importMap);
				var acc = buildAccess(declMods, name, forceStatic, forceInline, forceOverride);
				outFields.push({
					name: name,
					access: acc,
					kind: FFun(fn),
					pos: fpos
				});
			}

			function handleExpr(e:Expr):Void {
				switch (e.expr) {
					case EVars(vl):
						pushVarFields(vl);

					case EFunction(kind, f):
						switch (kind) {
							case FNamed(name, inlined):
								pushFunField(name, f, false, inlined == true, false, e.pos);
							default:
								initExprs.push(e);
						}

					case EMeta(m, inner):
						var isStatic = (m != null) && (m.name == ":static" || m.name == "static");
						var isOverride = (m != null) && (m.name == ":override" || m.name == "override");
						switch (inner.expr) {
							case EFunction(kind, f):
								switch (kind) {
									case FNamed(name, inlined):
										pushFunField(name, f, isStatic, inlined == true, isOverride, e.pos);
									default:
										initExprs.push(e);
								}
							case EVars(vl):
								pushVarFields(vl, isStatic);
							default:
								initExprs.push(e);
						}

					default:
						initExprs.push(e);
				}
			}

			switch (parsed.expr) {
				case EBlock(exprs):
					for (e in exprs)
						handleExpr(e);
				default:
					handleExpr(parsed);
			}

			return {fields: outFields, init: macro $b{initExprs}};
		});
	}

	static function buildUI(root:HrzNode, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Expr {
		return switch (root) {
			case Element(_, attrs, children):
				var exprs:Array<Expr> = [];
				for (a in attrs)
					exprs.push(attrExpr(macro this, a, pos, imports, usings, importMap));
				exprs.push(nodesToExpr(macro this, children, pos, imports, usings, importMap));
				macro $b{exprs};
			default:
				Context.error("Root must be <root> element", pos);
				macro {};
		}
	}

	static function nodesToExpr(parent:Expr, nodes:Array<HrzNode>, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Expr {
		var out:Array<Expr> = [];
		for (n in nodes) {
			switch (n) {
				case CodeBlock(code):
					var exprs = parseInlineCode(code, pos, imports, usings, importMap);
					for (e in exprs)
						out.push(e);
				default:
					out.push(nodeToExpr(parent, n, pos, imports, usings, importMap));
			}
		}
		return macro $b{out};
	}

	static function nodeToExpr(parent:Expr, n:HrzNode, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Expr {
		return switch (n) {
			case Element(tag, attrs, children):
				var childName = freshIdent("__n");
				var exprs:Array<Expr> = [];
				var tp = resolveTagTypePath(tag, imports, usings, importMap, pos);
				if (tp == null) {
					exprs.push(macro var $childName:sandbox.ui.Panel = cast $parent.AddChild($v{tag}));
				} else {
					var newExpr:Expr = {expr: ENew(tp, []), pos: pos};
					exprs.push(macro var $childName:sandbox.ui.Panel = cast $newExpr);
					exprs.push(macro $parent.AddChild($i{childName}));
				}
				exprs.push(macro $i{childName}.AddClass("hrazor-" + $v{tag}));
				for (a in attrs)
					exprs.push(attrExpr(macro $i{childName}, a, pos, imports, usings, importMap));
				if (children.length > 0)
					exprs.push(nodesToExpr(macro $i{childName}, children, pos, imports, usings, importMap));
				macro $b{exprs};

			case Text(value):
				var childName = freshIdent("__t");
				var newExpr:Expr = {expr: ENew(typePathFromString("sandbox.ui.Label"), []), pos: pos};
				var exprs:Array<Expr> = [];
				exprs.push(macro var $childName:sandbox.ui.Panel = cast $newExpr);
				exprs.push(macro $parent.AddChild($i{childName}));
				exprs.push(macro $i{childName}.AddClass("hrazor-text"));
				exprs.push(macro $i{childName}.SetPropertyObject("text", cast $v{value}));
				macro $b{exprs};

			case ExprText(code):
				var childName = freshIdent("__t");
				var newExpr:Expr = {expr: ENew(typePathFromString("sandbox.ui.Label"), []), pos: pos};
				var exprs:Array<Expr> = [];
				exprs.push(macro var $childName:sandbox.ui.Panel = cast $newExpr);
				exprs.push(macro $parent.AddChild($i{childName}));
				exprs.push(macro $i{childName}.AddClass("hrazor-text"));
				var e = parseExpr(code, pos, "text-expr", imports, usings, importMap);
				exprs.push(macro $i{childName}.SetPropertyObject("text", cast Std.string($e)));
				macro $b{exprs};

			case If(cond, thenB, elseB):
				var condE = parseExpr(cond, pos, "if-condition", imports, usings, importMap);
				var thenE = nodesToExpr(parent, thenB, pos, imports, usings, importMap);
				var elseE = nodesToExpr(parent, elseB, pos, imports, usings, importMap);
				if (elseB != null && elseB.length > 0) macro if ($condE)
					$thenE
				else
					$elseE; else macro if ($condE) $thenE;

			case ForIn(varName, iterExpr, body):
				var iterE = parseExpr(iterExpr, pos, "for-iter", imports, usings, importMap);
				var bodyE = nodesToExpr(parent, body, pos, imports, usings, importMap);
				macro for ($i{varName} in $iterE) $bodyE;

			case While(cond, body):
				var condE = parseExpr(cond, pos, "while-condition", imports, usings, importMap);
				var bodyE = nodesToExpr(parent, body, pos, imports, usings, importMap);
				macro while ($condE)
					$bodyE;

			case Switch(cond, cases, defaultBody):
				var condE = parseExpr(cond, pos, "switch-expr", imports, usings, importMap);
				var caseExprs:Array<Case> = [];
				for (c in cases) {
					var vals:Array<Expr> = [];
					for (v in c.values)
						vals.push(parseExpr(v, pos, "switch-case", imports, usings, importMap));
					var bodyE = nodesToExpr(parent, c.body, pos, imports, usings, importMap);
					caseExprs.push({values: vals, guard: null, expr: bodyE});
				}
				var defExpr = (defaultBody != null && defaultBody.length > 0) ? nodesToExpr(parent, defaultBody, pos, imports, usings, importMap) : null;
				{expr: ESwitch(condE, caseExprs, defExpr), pos: pos};

			case CodeBlock(code):
				var exprs = parseInlineCode(code, pos, imports, usings, importMap);
				macro $b{exprs};
		}
	}

	static function attrExpr(target:Expr, a:HrzAttr, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Expr {
		if (a.parts != null) {
			var e = buildInterpolatedExpr(a.parts, pos, imports, usings, importMap);
			if (a.name == "class")
				return macro $target.AddClass(Std.string($e));
			return macro $target.SetPropertyObject($v{a.name}, cast $e);
		}
		if (!a.isExpr) {
			if (a.name == "class")
				return macro $target.AddClass($v{a.value});
			return macro $target.SetPropertyObject($v{a.name}, cast $v{a.value});
		}
		var e = parseExpr(a.value, pos, "attr-expr:" + a.name, imports, usings, importMap);
		if (a.name == "class")
			return macro $target.AddClass(Std.string($e));
		return macro $target.SetPropertyObject($v{a.name}, cast $e);
	}

	static function buildInterpolatedExpr(parts:Array<HrzTextPart>, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Expr {
		var exprs:Array<Expr> = [];
		for (p in parts) {
			switch (p) {
				case Lit(value):
					exprs.push(macro $v{value});
				case Expr(code):
					var e = parseExpr(code, pos, "interp", imports, usings, importMap);
					exprs.push(macro Std.string($e));
			}
		}
		if (exprs.length == 0)
			return macro "";
		var out = exprs[0];
		for (i in 1...exprs.length) {
			out = {expr: EBinop(OpAdd, out, exprs[i]), pos: pos};
		}
		return out;
	}

	static function parseInlineCode(code:String, pos:Position, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Array<Expr> {
		return Context.withImports(imports, usings, function() {
			try {
				var e = Context.parse("{\n" + code + "\n}", pos);
				e = qualifyExpr(e, importMap, pos);
				return switch (e.expr) {
					case EBlock(exprs): exprs;
					default: [e];
				};
			} catch (e:Dynamic) {
				Context.error("Failed to parse inline code block: " + e, pos);
				return [];
			}
		});
	}

	static function parseExpr(src:String, pos:Position, what:String, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>):Expr {
		return Context.withImports(imports, usings, function() {
			try {
				var e = Context.parse(src, pos);
				return qualifyExpr(e, importMap, pos);
			} catch (e:Dynamic) {
				Context.error('Bad expression in ' + what + ': ' + e, pos);
				return macro null;
			}
		});
	}

	static function collectDeclModifiers(src:String):Map<String, DeclMods> {
		var out = new Map<String, DeclMods>();

		var i = 0;
		var depthP = 0;
		var depthB = 0;
		var depthC = 0;
		var inStr = false;
		var strCh = "";
		var esc = false;
		var inLineComment = false;
		var inBlockComment = false;
		var sawAt = false;

		var pending:DeclMods = {access: null, isStatic: false, isInline: false, isOverride: false};

		function resetPending():Void {
			pending = {access: null, isStatic: false, isInline: false, isOverride: false};
		}

		function isIdentStart(c:String):Bool {
			if (c.length == 0)
				return false;
			var cc = c.charCodeAt(0);
			return (cc >= 65 && cc <= 90) || (cc >= 97 && cc <= 122) || cc == 95;
		}

		function isIdentChar(c:String):Bool {
			if (c.length == 0)
				return false;
			var cc = c.charCodeAt(0);
			return (cc >= 48 && cc <= 57) || (cc >= 65 && cc <= 90) || (cc >= 97 && cc <= 122) || cc == 95;
		}

		function readIdent():String {
			var start = i;
			while (i < src.length && isIdentChar(src.charAt(i)))
				i++;
			return src.substring(start, i);
		}

		function skipWsAndComments():Void {
			while (i < src.length) {
				var c = src.charAt(i);
				if (c == " " || c == "\t" || c == "\r" || c == "\n") {
					i++;
					continue;
				}
				if (c == "/" && i + 1 < src.length) {
					var n = src.charAt(i + 1);
					if (n == "/") {
						i += 2;
						while (i < src.length && src.charAt(i) != "\n")
							i++;
						continue;
					}
					if (n == "*") {
						i += 2;
						while (i + 1 < src.length && !(src.charAt(i) == "*" && src.charAt(i + 1) == "/"))
							i++;
						if (i + 1 < src.length)
							i += 2;
						continue;
					}
				}
				break;
			}
		}

		function clonePending():DeclMods {
			return {
				access: pending.access,
				isStatic: pending.isStatic,
				isInline: pending.isInline,
				isOverride: pending.isOverride
			};
		}

		function readVarNames():Void {
			var localI = i;
			var localDepthP = 0;
			var localDepthB = 0;
			var localDepthC = 0;
			var localInStr = false;
			var localStrCh = "";
			var localEsc = false;
			var localLineComment = false;
			var localBlockComment = false;
			var expectName = true;

			function localIsIdentStart(c:String):Bool {
				return isIdentStart(c);
			}

			function localIsIdentChar(c:String):Bool {
				return isIdentChar(c);
			}

			function localReadIdent():String {
				var start = localI;
				while (localI < src.length && localIsIdentChar(src.charAt(localI)))
					localI++;
				return src.substring(start, localI);
			}

			while (localI < src.length) {
				var c = src.charAt(localI);

				if (localLineComment) {
					if (c == "\n")
						localLineComment = false;
					localI++;
					continue;
				}
				if (localBlockComment) {
					if (c == "*" && localI + 1 < src.length && src.charAt(localI + 1) == "/") {
						localBlockComment = false;
						localI += 2;
						continue;
					}
					localI++;
					continue;
				}
				if (localInStr) {
					if (localEsc) {
						localEsc = false;
						localI++;
						continue;
					}
					if (c == "\\") {
						localEsc = true;
						localI++;
						continue;
					}
					if (c == localStrCh) {
						localInStr = false;
					}
					localI++;
					continue;
				}

				if (c == "/" && localI + 1 < src.length) {
					var n = src.charAt(localI + 1);
					if (n == "/") {
						localLineComment = true;
						localI += 2;
						continue;
					}
					if (n == "*") {
						localBlockComment = true;
						localI += 2;
						continue;
					}
				}

				if (c == "\"" || c == "'") {
					localInStr = true;
					localStrCh = c;
					localI++;
					continue;
				}

				switch (c) {
					case "(":
						localDepthP++;
					case ")":
						if (localDepthP > 0)
							localDepthP--;
					case "[":
						localDepthB++;
					case "]":
						if (localDepthB > 0)
							localDepthB--;
					case "{":
						localDepthC++;
					case "}":
						if (localDepthC > 0)
							localDepthC--;
					default:
				}

				if (localDepthP == 0 && localDepthB == 0 && localDepthC == 0) {
					if (expectName) {
						if (c == " " || c == "\t" || c == "\r" || c == "\n") {
							localI++;
							continue;
						}
						if (localIsIdentStart(c)) {
							var name = localReadIdent();
							if (name.length > 0)
								out.set(name, clonePending());
							expectName = false;
							continue;
						}
					} else {
						if (c == ",") {
							expectName = true;
							localI++;
							continue;
						}
						if (c == ";") {
							i = localI + 1;
							return;
						}
					}
				}

				localI++;
			}
			i = localI;
		}

		while (i < src.length) {
			var c = src.charAt(i);

			if (inLineComment) {
				if (c == "\n")
					inLineComment = false;
				i++;
				continue;
			}
			if (inBlockComment) {
				if (c == "*" && i + 1 < src.length && src.charAt(i + 1) == "/") {
					inBlockComment = false;
					i += 2;
					continue;
				}
				i++;
				continue;
			}
			if (inStr) {
				if (esc) {
					esc = false;
					i++;
					continue;
				}
				if (c == "\\") {
					esc = true;
					i++;
					continue;
				}
				if (c == strCh) {
					inStr = false;
				}
				i++;
				continue;
			}

			if (c == "/" && i + 1 < src.length) {
				var n = src.charAt(i + 1);
				if (n == "/") {
					inLineComment = true;
					i += 2;
					continue;
				}
				if (n == "*") {
					inBlockComment = true;
					i += 2;
					continue;
				}
			}

			if (c == "\"" || c == "'") {
				inStr = true;
				strCh = c;
				i++;
				continue;
			}

			switch (c) {
				case "(":
					depthP++;
				case ")":
					if (depthP > 0)
						depthP--;
				case "[":
					depthB++;
				case "]":
					if (depthB > 0)
						depthB--;
				case "{":
					depthC++;
				case "}":
					if (depthC > 0)
						depthC--;
				case "@":
					if (depthP == 0 && depthB == 0 && depthC == 0)
						sawAt = true;
				default:
			}

			if (depthP == 0 && depthB == 0 && depthC == 0 && isIdentStart(c)) {
				var tok = readIdent();
				if (sawAt) {
					sawAt = false;
					continue;
				}
				switch (tok) {
					case "public":
						pending.access = "public";
					case "private":
						pending.access = "private";
					case "static":
						pending.isStatic = true;
					case "inline":
						pending.isInline = true;
					case "override":
						pending.isOverride = true;
					case "var":
						readVarNames();
						resetPending();
					case "function":
						skipWsAndComments();
						if (i < src.length && isIdentStart(src.charAt(i))) {
							var name = readIdent();
							if (name.length > 0)
								out.set(name, clonePending());
						}
						resetPending();
					default:
						resetPending();
				}
				continue;
			}

			i++;
		}

		return out;
	}

	static function stripTopLevelModifiers(src:String):String {
		var out = new StringBuf();
		var i = 0;
		var depthP = 0;
		var depthB = 0;
		var depthC = 0;
		var inStr = false;
		var strCh = "";
		var esc = false;
		var inLineComment = false;
		var inBlockComment = false;
		var sawAt = false;

		function isIdentStart(c:String):Bool {
			if (c.length == 0)
				return false;
			var cc = c.charCodeAt(0);
			return (cc >= 65 && cc <= 90) || (cc >= 97 && cc <= 122) || cc == 95;
		}

		function isIdentChar(c:String):Bool {
			if (c.length == 0)
				return false;
			var cc = c.charCodeAt(0);
			return (cc >= 48 && cc <= 57) || (cc >= 65 && cc <= 90) || (cc >= 97 && cc <= 122) || cc == 95;
		}

		function readIdent():String {
			var start = i;
			while (i < src.length && isIdentChar(src.charAt(i)))
				i++;
			return src.substring(start, i);
		}

		function isModifier(tok:String):Bool {
			return tok == "public" || tok == "private" || tok == "static" || tok == "inline" || tok == "override";
		}

		while (i < src.length) {
			var c = src.charAt(i);

			if (inLineComment) {
				out.add(c);
				if (c == "\n")
					inLineComment = false;
				i++;
				continue;
			}
			if (inBlockComment) {
				out.add(c);
				if (c == "*" && i + 1 < src.length && src.charAt(i + 1) == "/") {
					out.add("/");
					inBlockComment = false;
					i += 2;
					continue;
				}
				i++;
				continue;
			}
			if (inStr) {
				out.add(c);
				if (esc) {
					esc = false;
					i++;
					continue;
				}
				if (c == "\\") {
					esc = true;
					i++;
					continue;
				}
				if (c == strCh) {
					inStr = false;
				}
				i++;
				continue;
			}

			if (c == "/" && i + 1 < src.length) {
				var n = src.charAt(i + 1);
				if (n == "/") {
					out.add(c);
					out.add(n);
					inLineComment = true;
					i += 2;
					continue;
				}
				if (n == "*") {
					out.add(c);
					out.add(n);
					inBlockComment = true;
					i += 2;
					continue;
				}
			}

			if (c == "\"" || c == "'") {
				out.add(c);
				inStr = true;
				strCh = c;
				i++;
				continue;
			}

			switch (c) {
				case "(":
					depthP++;
				case ")":
					if (depthP > 0)
						depthP--;
				case "[":
					depthB++;
				case "]":
					if (depthB > 0)
						depthB--;
				case "{":
					depthC++;
				case "}":
					if (depthC > 0)
						depthC--;
				case "@":
					if (depthP == 0 && depthB == 0 && depthC == 0)
						sawAt = true;
				default:
			}

			if (depthP == 0 && depthB == 0 && depthC == 0 && isIdentStart(c)) {
				var tok = readIdent();
				if (sawAt) {
					sawAt = false;
					out.add(tok);
					continue;
				}
				if (!isModifier(tok))
					out.add(tok);
				continue;
			}

			out.add(c);
			i++;
		}
		return out.toString();
	}

	static function buildAccess(map:Map<String, DeclMods>, name:String, forceStatic:Bool, forceInline:Bool, forceOverride:Bool):Array<Access> {
		var mods = map.exists(name) ? map.get(name) : null;
		var access = (mods != null && mods.access != null) ? mods.access : "public";
		var acc:Array<Access> = [];
		acc.push(access == "private" ? APrivate : APublic);
		if (forceStatic || (mods != null && mods.isStatic))
			acc.push(AStatic);
		if (forceInline || (mods != null && mods.isInline))
			acc.push(AInline);
		if (forceOverride || (mods != null && mods.isOverride))
			acc.push(AOverride);
		return acc;
	}

	static function tagToTypePath(tag:String):Null<TypePath> {
		var t = tag.toLowerCase();
		return switch (t) {
			case "label" | "span": typePathFromString("sandbox.ui.Label");
			case "img" | "image": typePathFromString("sandbox.ui.Image");
			case "button": typePathFromString("sandbox.ui.Button");
			case "textentry" | "input" | "textbox": typePathFromString("sandbox.ui.TextEntry");
			case "icon" | "iconpanel": typePathFromString("sandbox.ui.IconPanel");
			case "svg": typePathFromString("sandbox.ui.SvgPanel");
			case "video": typePathFromString("sandbox.ui.VideoPanel");
			case "web": typePathFromString("sandbox.ui.WebPanel");
			default: null;
		}
	}

	static function resolveTagTypePath(tag:String, imports:Array<String>, usings:Array<String>, importMap:Map<String, TypePath>, pos:Position):Null<TypePath> {
		var built = tagToTypePath(tag);
		if (built != null)
			return built;
		if (!isComponentTag(tag))
			return null;
		if (tag.indexOf(".") >= 0)
			return typePathFromString(tag);
		if (importMap.exists(tag))
			return importMap.get(tag);
		var resolved:TypePath = null;
		Context.withImports(imports, usings, function() {
			try {
				var t = Context.getType(tag);
				resolved = typeToTypePath(t);
			} catch (e:Dynamic) {}
			return null;
		});
		return resolved != null ? resolved : typePathFromString(tag);
	}

	static function isComponentTag(tag:String):Bool {
		if (tag == null || tag.length == 0)
			return false;
		var c = tag.charAt(0);
		if (c >= "A" && c <= "Z")
			return true;
		return tag.indexOf(".") >= 0;
	}

	static function typePathFromString(path:String):TypePath {
		var parts = path.split(".");
		var name = parts.pop();
		return {pack: parts, name: name};
	}

	static function buildImportMap(imports:Array<String>, pos:Position):Map<String, TypePath> {
		var map = new Map<String, TypePath>();
		for (imp in imports) {
			var s = imp.trim();
			if (s.length == 0)
				continue;
			if (s.indexOf(" as ") >= 0) {
				Context.error("@using with alias is not supported: " + s, pos);
				continue;
			}
			if (StringTools.endsWith(s, ".*"))
				continue;
			var parts = s.split(".");
			var name = parts.pop();
			if (name == null || name.length == 0)
				continue;
			map.set(name, {pack: parts, name: name});
		}
		return map;
	}

	static function qualifyComplexType(ct:Null<ComplexType>, map:Map<String, TypePath>):Null<ComplexType> {
		if (ct == null)
			return null;
		return switch (ct) {
			case TPath(tp):
				TPath(qualifyTypePath(tp, map));
			case TNamed(name, t):
				TNamed(name, qualifyComplexType(t, map));
			case TFunction(args, ret):
				TFunction([for (a in args) qualifyComplexType(a, map)], qualifyComplexType(ret, map));
			case TParent(t):
				TParent(qualifyComplexType(t, map));
			case TOptional(t):
				TOptional(qualifyComplexType(t, map));
			case TAnonymous(fields):
				TAnonymous([
					for (f in fields)
						{
							name: f.name,
							doc: f.doc,
							access: f.access,
							meta: f.meta,
							pos: f.pos,
							kind: switch (f.kind) {
								case FVar(t, e): FVar(qualifyComplexType(t, map), e);
								case FProp(get, set, t, e): FProp(get, set, qualifyComplexType(t, map), e);
								case FFun(fn): FFun(qualifyFunctionTypes(fn, map));
							}
						}
				]);
			case TExtend(types, fields):
				TExtend([for (t in types) qualifyTypePath(t, map)], fields);
			case TIntersection(types):
				TIntersection([for (t in types) qualifyComplexType(t, map)]);
		}
	}

	static function qualifyFunctionTypes(f:Function, map:Map<String, TypePath>):Function {
		return {
			args: [for (a in f.args) {
				name: a.name,
				opt: a.opt,
				type: qualifyComplexType(a.type, map),
				value: a.value,
				meta: a.meta
			}],
			ret: qualifyComplexType(f.ret, map),
			expr: f.expr,
			params: f.params
		};
	}

	static function qualifyTypePath(tp:TypePath, map:Map<String, TypePath>):TypePath {
		var out:TypePath = {
			pack: tp.pack,
			name: tp.name,
			sub: tp.sub,
			params: tp.params
		};
		if ((out.pack == null || out.pack.length == 0) && map.exists(out.name)) {
			var full = map.get(out.name);
			out.pack = full.pack;
		}
		if (out.params != null) {
			var newParams:Array<TypeParam> = [];
			for (p in out.params) {
				newParams.push(switch (p) {
					case TPType(t): TPType(qualifyComplexType(t, map));
					case TPExpr(e): TPExpr(qualifyExpr(e, map, e.pos));
				});
			}
			out.params = newParams;
		}
		return out;
	}

	static function qualifyExpr(e:Expr, map:Map<String, TypePath>, pos:Position):Expr {
		return switch (e.expr) {
			case ENew(tp, params):
				var nt = qualifyTypePath(tp, map);
				var nparams = [for (p in params) qualifyExpr(p, map, pos)];
				{expr: ENew(nt, nparams), pos: e.pos};
			case EVars(vl):
				var out = [for (v in vl) {
					name: v.name,
					type: qualifyComplexType(v.type, map),
					expr: v.expr != null ? qualifyExpr(v.expr, map, pos) : null
				}];
				{expr: EVars(out), pos: e.pos};
			case EFunction(kind, f):
				var nf = qualifyFunctionTypes(f, map);
				if (nf.expr != null)
					nf.expr = qualifyExpr(nf.expr, map, pos);
				{expr: EFunction(kind, nf), pos: e.pos};
			case ECall(fn, params):
				{expr: ECall(qualifyExpr(fn, map, pos), [for (p in params) qualifyExpr(p, map, pos)]), pos: e.pos};
			case EField({expr: EConst(CIdent(name))}, field) if (map.exists(name)):
				var base = typePathToExpr(map.get(name), e.pos);
				{expr: EField(base, field), pos: e.pos};
			case EField(e1, field):
				{expr: EField(qualifyExpr(e1, map, pos), field), pos: e.pos};
			case ECheckType(e1, t):
				{expr: ECheckType(qualifyExpr(e1, map, pos), qualifyComplexType(t, map)), pos: e.pos};
			case EIs(e1, t):
				{expr: EIs(qualifyExpr(e1, map, pos), qualifyComplexType(t, map)), pos: e.pos};
			case ECast(e1, t):
				{expr: ECast(qualifyExpr(e1, map, pos), qualifyComplexType(t, map)), pos: e.pos};
			case EArray(e1, e2):
				{expr: EArray(qualifyExpr(e1, map, pos), qualifyExpr(e2, map, pos)), pos: e.pos};
			case EObjectDecl(fields):
				{expr: EObjectDecl([for (f in fields) {field: f.field, expr: qualifyExpr(f.expr, map, pos)}]), pos: e.pos};
			case EArrayDecl(values):
				{expr: EArrayDecl([for (v in values) qualifyExpr(v, map, pos)]), pos: e.pos};
			case EBinop(op, e1, e2):
				{expr: EBinop(op, qualifyExpr(e1, map, pos), qualifyExpr(e2, map, pos)), pos: e.pos};
			case EUnop(op, postFix, e1):
				{expr: EUnop(op, postFix, qualifyExpr(e1, map, pos)), pos: e.pos};
			case EParenthesis(e1):
				{expr: EParenthesis(qualifyExpr(e1, map, pos)), pos: e.pos};
			case EIf(econd, eif, eelse):
				{expr: EIf(qualifyExpr(econd, map, pos), qualifyExpr(eif, map, pos), eelse != null ? qualifyExpr(eelse, map, pos) : null), pos: e.pos};
			case EFor(it, e1):
				{expr: EFor(qualifyExpr(it, map, pos), qualifyExpr(e1, map, pos)), pos: e.pos};
			case EWhile(econd, e1, normal):
				{expr: EWhile(qualifyExpr(econd, map, pos), qualifyExpr(e1, map, pos), normal), pos: e.pos};
			case EBlock(exprs):
				{expr: EBlock([for (x in exprs) qualifyExpr(x, map, pos)]), pos: e.pos};
			case EReturn(e1):
				{expr: EReturn(e1 != null ? qualifyExpr(e1, map, pos) : null), pos: e.pos};
			case EThrow(e1):
				{expr: EThrow(qualifyExpr(e1, map, pos)), pos: e.pos};
			case ETry(e1, catches):
				{expr: ETry(qualifyExpr(e1, map, pos), [for (c in catches) {name: c.name, type: qualifyComplexType(c.type, map), expr: qualifyExpr(c.expr, map, pos)}]), pos: e.pos};
			case ESwitch(e1, cases, edef):
				{
					expr: ESwitch(
						qualifyExpr(e1, map, pos),
						[for (c in cases) {values: [for (v in c.values) qualifyExpr(v, map, pos)], guard: c.guard != null ? qualifyExpr(c.guard, map, pos) : null, expr: qualifyExpr(c.expr, map, pos)}],
						edef != null ? qualifyExpr(edef, map, pos) : null
					),
					pos: e.pos
				};
			case EMeta(m, e1):
				{expr: EMeta(m, qualifyExpr(e1, map, pos)), pos: e.pos};
			case EDisplay(e1, dk):
				{expr: EDisplay(qualifyExpr(e1, map, pos), dk), pos: e.pos};
			default:
				e;
		}
	}

	static function typeToTypePath(t:Type):Null<TypePath> {
		var ft = Context.follow(t);
		return switch (ft) {
			case TInst(c, _):
				var cls = c.get();
				var pack = cls.pack;
				var modParts = cls.module.split(".");
				var modName = modParts[modParts.length - 1];
				if (modName != cls.name) {
					{pack: pack, name: modName, sub: cls.name};
				} else {
					{pack: pack, name: cls.name};
				}
			default:
				null;
		}
	}

	static function typePathToExpr(tp:TypePath, pos:Position):Expr {
		var expr:Expr = {expr: EConst(CIdent(tp.pack != null && tp.pack.length > 0 ? tp.pack[0] : tp.name)), pos: pos};
		if (tp.pack != null && tp.pack.length > 0) {
			for (i in 1...tp.pack.length) {
				expr = {expr: EField(expr, tp.pack[i]), pos: pos};
			}
			expr = {expr: EField(expr, tp.name), pos: pos};
		}
		return expr;
	}

	static function applyInherits(typeStr:String, imports:Array<String>, usings:Array<String>, pos:Position):Void {
		var lc = Context.getLocalClass();
		if (lc == null) {
			Context.error("No local class for @inherits", pos);
			return;
		}

		var expected:Type = null;
		Context.withImports(imports, usings, function() {
			try {
				if (typeStr.indexOf("<") == -1) {
					expected = Context.getType(typeStr);
				} else {
					var e = Context.parse("null : " + typeStr, pos);
					expected = Context.typeExpr(e).t;
				}
			} catch (e:Dynamic) {
				Context.error("@inherits failed to resolve type: " + typeStr + " (" + e + ")", pos);
			}
			return null;
		});
		if (expected == null)
			return;

		var exp = Context.follow(expected);
		var expectedName = switch (exp) {
			case TInst(c, _): c.get().name;
			default:
				Context.error("@inherits must be a class type: " + typeStr, pos);
				return;
		};

		var cls = lc.get();
		if (cls.superClass == null || cls.superClass.t.get().name != expectedName) {
			Context.error('@inherits ' + expectedName + ' requires the Haxe class to extend it (e.g. "class X extends ' + expectedName + '<...>")', pos);
		}
	}


	static function injectCtor(expr:Expr, initCall:Null<Expr>, buildCall:Expr):Expr {
		var calls:Array<Expr> = [];
		if (initCall != null)
			calls.push(initCall);
		calls.push(buildCall);

		return switch (expr.expr) {
			case EBlock(exprs):
				if (exprs.length > 0 && isSuperCall(exprs[0])) {
					var out = [exprs[0]];
					for (c in calls)
						out.push(c);
					for (i in 1...exprs.length)
						out.push(exprs[i]);
					macro $b{out};
				} else {
					var out = exprs.copy();
					for (c in calls)
						out.push(c);
					macro $b{out};
				}
			default:
				var out = [expr];
				for (c in calls)
					out.push(c);
				macro $b{out};
		}
	}

	static function isSuperCall(e:Expr):Bool {
		return switch (e.expr) {
			case ECall({expr: EConst(CIdent("super"))}, _):
				true;
			default:
				false;
		}
	}

	static var counter = 0;

	static function freshIdent(prefix:String):String {
		counter++;
		return prefix + counter;
	}
	#end
}
