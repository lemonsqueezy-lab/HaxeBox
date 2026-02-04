package hrazor;
#if macro
import haxe.macro.Context;
import haxe.macro.Expr.Position;
#end

using StringTools;

enum HrzTextPart {
	Lit(value:String);
	Expr(code:String);
}

typedef HrzAttr = {
	var name:String;
	var value:String; // raw "..." or raw expr inside {...}
	var isExpr:Bool;
	@:optional var parts:Array<HrzTextPart>; // for interpolated strings
}

typedef HrzSwitchCase = {
	var values:Array<String>;
	var body:Array<HrzNode>;
}

enum HrzNode {
	Element(tag:String, attrs:Array<HrzAttr>, children:Array<HrzNode>);
	If(cond:String, thenBranch:Array<HrzNode>, elseBranch:Array<HrzNode>);
	ForIn(varName:String, iterExpr:String, body:Array<HrzNode>);
	While(cond:String, body:Array<HrzNode>);
	Switch(expr:String, cases:Array<HrzSwitchCase>, defaultBody:Array<HrzNode>);
	CodeBlock(code:String);
	ExprText(code:String);
	Text(value:String);
}

typedef HrzDoc = {
	var namespace:String;
	var inherits:String;
	var imports:Array<String>;
	var usings:Array<String>;
	var root:HrzNode; // Element("root", ...)
	var code:String;
	var file:String;
}

class HrazorParser {
	#if macro
	public static function parse(src:String, file:String, pos:Position):HrzDoc {
		var namespace = "";
		var inherits = "";
		var imports:Array<String> = [];
		var usings:Array<String> = [];
		var code = "";

		// 1) Extract @code / @functions { ... } blocks (Haxe)
		var blocks:Array<String> = [];
		while (true) {
			var codeIdx = indexOfWord(src, "@code");
			var funcIdx = indexOfWord(src, "@functions");
			var idx = -1;
			var kw = "";
			if (codeIdx >= 0 && funcIdx >= 0) {
				if (codeIdx < funcIdx) {
					idx = codeIdx;
					kw = "@code";
				} else {
					idx = funcIdx;
					kw = "@functions";
				}
			} else if (codeIdx >= 0) {
				idx = codeIdx;
				kw = "@code";
			} else if (funcIdx >= 0) {
				idx = funcIdx;
				kw = "@functions";
			}

			if (idx < 0)
				break;

			var braceIdx = src.indexOf("{", idx + kw.length);
			if (braceIdx < 0)
				Context.error(kw + " must be followed by {...}", pos);
			var endIdx = findMatchingBrace(src, braceIdx);
			if (endIdx < 0)
				Context.error("Unclosed " + kw + " { ... }", pos);
			blocks.push(src.substring(braceIdx + 1, endIdx));
			src = src.substring(0, idx) + src.substring(endIdx + 1);
		}
		code = blocks.join("\n");

		// 2) директивы @namespace / @inherits — только до <root
		var rootIdx = src.indexOf("<root");
		if (rootIdx < 0)
			Context.error("Missing <root> in .hrazor", pos);

		var header = src.substring(0, rootIdx);
		var body = src.substring(rootIdx);

		for (line in header.split("\n")) {
			var t = line.trim();
			if (t.length == 0)
				continue;
			if (StringTools.startsWith(t, "@namespace"))
				namespace = t.substr("@namespace".length).trim();
			else if (StringTools.startsWith(t, "@inherits"))
				inherits = t.substr("@inherits".length).trim();
			else if (StringTools.startsWith(t, "@using")) {
				var u = t.substr("@using".length).trim();
				if (StringTools.endsWith(u, ";"))
					u = u.substr(0, u.length - 1).trim();
				if (u.length == 0)
					Context.error("@using requires a type or package", pos);
				imports.push(u);
				if (!StringTools.endsWith(u, ".*")) {
					var parts = u.split(".");
					var last = parts[parts.length - 1];
					if (last.length > 0 && last.charCodeAt(0) >= 65 && last.charCodeAt(0) <= 90)
						usings.push(u);
				}
			}
			else if (t.charAt(0) == "@")
				Context.error("Unsupported directive in header: " + t, pos);
		}

		// 3) parse markup+control into AST (root element required)
		var p = new MixedParser(body, pos);
		var root = p.parseElement(); // must be <root ...> ... </root>
		switch (root) {
			case Element(tag, _, _):
				if (tag != "root")
					Context.error("Top-level tag must be <root>", pos);
			case _:
				Context.error("Top-level must be <root> element", pos);
		}

		p.skipWs();
		if (!p.eof()) {
			// allow trailing whitespace only
			var rest = p.remaining().trim();
			if (rest.length > 0)
				Context.error("Unexpected trailing content after </root>", pos);
		}

		return {
			namespace: namespace,
			inherits: inherits,
			imports: imports,
			usings: usings,
			root: root,
			code: code,
			file: file
		};
	}

	static function indexOfWord(s:String, w:String):Int {
		// find directive that is followed by optional whitespace + "{"
		var i = s.indexOf(w);
		while (i >= 0) {
			var j = i + w.length;
			while (j < s.length) {
				var c = s.charAt(j);
				if (c == " " || c == "\t" || c == "\r" || c == "\n") {
					j++;
					continue;
				}
				break;
			}
			if (j < s.length && s.charAt(j) == "{")
				return i;
			i = s.indexOf(w, i + w.length);
		}
		return -1;
	}

	static function findMatchingBrace(s:String, open:Int):Int {
		var depth = 0;
		var inStr = false;
		var strCh = '"';
		var esc = false;

		for (i in open...s.length) {
			var ch = s.charAt(i);

			if (inStr) {
				if (esc) {
					esc = false;
					continue;
				}
				if (ch == "\\") {
					esc = true;
					continue;
				}
				if (ch == strCh)
					inStr = false;
				continue;
			} else {
				if (ch == '"' || ch == "'") {
					inStr = true;
					strCh = ch;
					continue;
				}
			}

			if (ch == "{")
				depth++;
			else if (ch == "}") {
				depth--;
				if (depth == 0)
					return i;
			}
		}
		return -1;
	}
	#end
}

/**
 * Парсер mixed контента внутри <root>:
 * - элементы: <div ...>...</div> и self-closing <label .../>
 * - control: @if (...) { ... } else { ... }
 *            @for (x in expr) { ... }
 *            @while (...) { ... }
 */
#if macro
private class MixedParser {
	var s:String;
	var p:Int = 0;
	var pos:Position;

	public function new(s:String, pos:Position) {
		this.s = s;
		this.pos = pos;
	}

	public inline function eof():Bool
		return p >= s.length;

	public function remaining():String
		return s.substr(p);

	public function skipWs() {
		while (!eof()) {
			var c = s.charAt(p);
			if (c == " " || c == "\t" || c == "\r" || c == "\n")
				p++;
			else
				break;
		}
	}

	inline function isWsChar(c:String):Bool {
		return c == " " || c == "\t" || c == "\r" || c == "\n";
	}

	function isAllWhitespace(str:String):Bool {
		for (i in 0...str.length) {
			if (!isWsChar(str.charAt(i)))
				return false;
		}
		return true;
	}

	inline function isInlineBoundaryChar(c:String):Bool {
		return isWsChar(c) || c == "<" || c == "@" || c == "!" || c == "," || c == ";" || c == ":" || c == "+" || c == "-"
			|| c == "*" || c == "/" || c == "%" || c == "=" || c == ">" || c == "?" || c == "|" || c == "&";
	}

	function normalizeText(raw:String):String {
		if (raw.indexOf("\n") >= 0 || raw.indexOf("\r") >= 0)
			return raw.trim();
		return raw;
	}

	function peek(n:Int = 0):String
		return (p + n < s.length) ? s.charAt(p + n) : "";

	function expect(ch:String) {
		if (peek() != ch)
			Context.error('Expected "' + ch + '"', pos);
		p++;
	}

	function readName():String {
		skipWs();
		var start = p;
		while (!eof()) {
			var c = peek();
			var ok = (c >= "a" && c <= "z") || (c >= "A" && c <= "Z") || (c >= "0" && c <= "9") || c == "_" || c == "-" || c == "." || c == ":";
			if (!ok)
				break;
			p++;
		}
		if (p == start)
			Context.error("Expected name", pos);
		return s.substring(start, p);
	}

	function readQuoted():String {
		skipWs();
		var q = peek();
		if (q != '"' && q != "'")
			Context.error('Expected string literal', pos);
		p++;
		var start = p;
		var esc = false;
		while (!eof()) {
			var c = peek();
			if (esc) {
				esc = false;
				p++;
				continue;
			}
			if (c == "\\") {
				esc = true;
				p++;
				continue;
			}
			if (c == q)
				break;
			p++;
		}
		if (eof())
			Context.error("Unclosed string literal", pos);
		var out = s.substring(start, p);
		p++; // closing quote
		return out;
	}

	function readBalanced(open:String, close:String):String {
		// reads content including nested pairs, starting at current char == open
		skipWs();
		if (peek() != open)
			Context.error('Expected "' + open + '"', pos);
		var startOpen = p;
		p++; // consume open
		var depth = 1;

		var inStr = false;
		var strCh = '"';
		var esc = false;

		while (!eof()) {
			var c = peek();

			if (inStr) {
				if (esc) {
					esc = false;
					p++;
					continue;
				}
				if (c == "\\") {
					esc = true;
					p++;
					continue;
				}
				if (c == strCh) {
					inStr = false;
					p++;
					continue;
				}
				p++;
				continue;
			} else {
				if (c == '"' || c == "'") {
					inStr = true;
					strCh = c;
					p++;
					continue;
				}
			}

			if (c == open) {
				depth++;
				p++;
				continue;
			}
			if (c == close) {
				depth--;
				p++;
				if (depth == 0) {
					// return inside content (without outer)
					var full = s.substring(startOpen, p);
					return full.substring(1, full.length - 1);
				}
				continue;
			}
			p++;
		}
		Context.error("Unclosed balanced block " + open + "..." + close, pos);
		return "";
	}

	function readAttrValue():{val:String, isExpr:Bool, ?parts:Array<HrzTextPart>} {
		skipWs();
		if (peek() == '"' || peek() == "'") {
			var raw = readQuoted();
			var parts = parseInterpolatedParts(raw);
			var hasExpr = false;
			for (p2 in parts) {
				switch (p2) {
					case Expr(_):
						hasExpr = true;
					default:
				}
				if (hasExpr)
					break;
			}
			if (hasExpr) {
				return {val: "", isExpr: true, parts: parts};
			}
			return {val: raw, isExpr: false};
		}
		if (peek() == "{") {
			var inside = readBalanced("{", "}").trim();
			return {val: inside, isExpr: true};
		}
		Context.error('Attribute value must be "string" or {expr}', pos);
		return {val: "", isExpr: false};
	}

	function parseInterpolatedParts(raw:String):Array<HrzTextPart> {
		var parts:Array<HrzTextPart> = [];
		var buf = new StringBuf();
		var bufLen = 0;
		var i = 0;
		while (i < raw.length) {
			var c = raw.charAt(i);
			if (c == "@") {
				if (i + 1 < raw.length && raw.charAt(i + 1) == "@") {
					buf.add("@");
					bufLen++;
					i += 2;
					continue;
				}
				if (bufLen > 0) {
					parts.push(Lit(buf.toString()));
					buf = new StringBuf();
					bufLen = 0;
				}
				i++;
				if (i >= raw.length) {
					buf.add("@");
					bufLen++;
					break;
				}
				var n = raw.charAt(i);
				if (n == "(") {
					var res = readBalancedFromString(raw, i, "(", ")");
					parts.push(Expr(res.inner.trim()));
					i = res.next;
					continue;
				}
				if (n == "{") {
					Context.error("@{...} is not allowed inside attribute strings", pos);
				}
				var res2 = readInlineExprFromString(raw, i);
				if (res2.expr.length == 0) {
					buf.add("@");
					bufLen++;
					continue;
				}
				parts.push(Expr(res2.expr));
				i = res2.next;
				continue;
			}
			buf.add(c);
			bufLen++;
			i++;
		}
		if (bufLen > 0)
			parts.push(Lit(buf.toString()));
		return parts;
	}

	function readInlineExprTail():String {
		var start = p;
		var depthP = 0;
		var depthB = 0;
		var depthC = 0;
		var inStr = false;
		var strCh = '"';
		var esc = false;

		while (!eof()) {
			var c = peek();
			if (inStr) {
				if (esc) {
					esc = false;
					p++;
					continue;
				}
				if (c == "\\") {
					esc = true;
					p++;
					continue;
				}
				if (c == strCh) {
					inStr = false;
				}
				p++;
				continue;
			} else if (c == '"' || c == "'") {
				inStr = true;
				strCh = c;
				p++;
				continue;
			}

			switch (c) {
				case "(":
					depthP++;
					p++;
					continue;
				case ")":
					if (depthP == 0)
						return s.substring(start, p);
					depthP--;
					p++;
					continue;
				case "[":
					depthB++;
					p++;
					continue;
				case "]":
					if (depthB == 0)
						return s.substring(start, p);
					depthB--;
					p++;
					continue;
				case "{":
					depthC++;
					p++;
					continue;
				case "}":
					if (depthC == 0)
						return s.substring(start, p);
					depthC--;
					p++;
					continue;
				default:
			}

			if (depthP == 0 && depthB == 0 && depthC == 0 && isInlineBoundaryChar(c)) {
				if (c == "?" && (peek(1) == "." || peek(1) == "?" || peek(1) == "[")) {
					p++;
					continue;
				}
				break;
			}
			p++;
		}
		return s.substring(start, p);
	}

	function readLineText():String {
		var start = p;
		while (!eof()) {
			var c = peek();
			if (c == "\n" || c == "\r")
				break;
			p++;
		}
		return s.substring(start, p);
	}

	public function parseElement():HrzNode {
		skipWs();
		expect("<");

		if (peek() == "/")
			Context.error("Unexpected closing tag", pos);

		var tag = readName();
		var attrs:Array<HrzAttr> = [];

		while (true) {
			skipWs();
			var c = peek();
			if (c == "/" || c == ">")
				break;

			var an = readName();
			skipWs();
			expect("=");
			var av = readAttrValue();
			if (av.parts != null)
				attrs.push({name: an, value: av.val, isExpr: av.isExpr, parts: av.parts});
			else
				attrs.push({name: an, value: av.val, isExpr: av.isExpr});
		}

		skipWs();
		if (peek() == "/") {
			p++;
			expect(">");
			return Element(tag, attrs, []);
		}

		expect(">");

		// children until </tag>
		var children = parseNodesUntilClose(tag);
		return Element(tag, attrs, children);
	}

	function trySkipBangMarkup():Bool {
		if (peek() != "<" || peek(1) != "!")
			return false;
		if (s.substr(p, 4) == "<!--") {
			var end = s.indexOf("-->", p + 4);
			if (end < 0)
				Context.error("Unclosed HTML comment <!-- -->", pos);
			p = end + 3;
			return true;
		}
		var end2 = s.indexOf(">", p + 2);
		if (end2 < 0)
			Context.error("Unclosed <! ... > block", pos);
		p = end2 + 1;
		return true;
	}

	function parseNodesUntilClose(tag:String):Array<HrzNode> {
		var out:Array<HrzNode> = [];
		while (true) {
			if (eof())
				Context.error("Unexpected EOF. Missing </" + tag + ">", pos);

			// closing tag?
			if (peek() == "<" && peek(1) == "/") {
				p += 2;
				var closeName = readName();
				skipWs();
				expect(">");
				if (closeName != tag)
					Context.error("Mismatched closing tag: expected </" + tag + "> got </" + closeName + ">", pos);
				return out;
			}

			if (trySkipBangMarkup())
				continue;

			// element
			if (peek() == "<") {
				out.push(parseElement());
				continue;
			}

			// control block / inline expr / escape
			if (peek() == "@") {
				var n = parseAt();
				if (n != null)
					out.push(n);
				continue;
			}

			// raw text
			var start = p;
			while (!eof() && peek() != "<" && peek() != "@")
				p++;
			var raw = s.substring(start, p);
			var text = normalizeText(raw);
			if (!isAllWhitespace(text))
				out.push(Text(text));
		}
		return out;
	}

	function parseAt():Null<HrzNode> {
		expect("@");

		if (peek() == "@") {
			p++;
			return Text("@");
		}
		if (peek() == "*") {
			// Razor comment @* ... *@
			p++;
			var end = s.indexOf("*@", p);
			if (end < 0)
				Context.error("Unclosed Razor comment @* ... *@", pos);
			p = end + 2;
			return null;
		}
		if (peek() == ":") {
			// explicit text line
			p++;
			var line = readLineText();
			return isAllWhitespace(line) ? null : Text(line);
		}
		if (peek() == "{") {
			var code = readBalanced("{", "}");
			return CodeBlock(code);
		}
		if (peek() == "(") {
			var expr = readBalanced("(", ")");
			return ExprText(expr.trim());
		}

		var kw = readWord();
		return switch (kw) {
			case "if":
				parseIfAfterIfKeyword();

			case "for":
				// Only Haxe-style: for (x in expr)
				var inside = readBalanced("(", ")").trim();
				var parts = splitTopLevelIn(inside);
				if (parts == null)
					Context.error('Only "for (x in expr)" is supported in hrazor', pos);
				ForIn(parts.varName, parts.iterExpr, parseBraceBlockNodes());

			case "foreach":
				var inside = readBalanced("(", ")").trim();
				var parts = splitTopLevelIn(inside);
				if (parts == null)
					Context.error('Only "foreach (x in expr)" is supported in hrazor', pos);
				ForIn(parts.varName, parts.iterExpr, parseBraceBlockNodes());

			case "while":
				var cond = readBalanced("(", ")").trim();
				While(cond, parseBraceBlockNodes());

			case "switch":
				parseSwitchControl();

			case "code", "functions":
				// inline code block in markup
				skipWs();
				var block = readBalanced("{", "}");
				CodeBlock(block);

			case "using", "inherits", "namespace":
				Context.error("Directive @" + kw + " must be placed before <root>", pos);
				Element("div", [], []);

			default:
				if (kw.length == 0) {
					Context.error("Invalid @-expression", pos);
					return null;
				}
				var tail = readInlineExprTail();
				ExprText(kw + tail);
		}
	}

	function parseIfAfterIfKeyword():HrzNode {
		var cond = readBalanced("(", ")").trim();
		var thenNodes = parseBraceBlockNodes();
		skipWs();
		var elseNodes:Array<HrzNode> = [];
		var save = p;
		var w = readWord();
		if (w == "else") {
			skipWs();
			var save2 = p;
			var w2 = readWord();
			if (w2 == "if") {
				var nested = parseIfAfterIfKeyword();
				elseNodes = [nested];
			} else {
				p = save2;
				elseNodes = parseBraceBlockNodes();
			}
		} else {
			p = save;
		}
		return If(cond, thenNodes, elseNodes);
	}

	function parseSwitchControl():HrzNode {
		var expr = readBalanced("(", ")").trim();
		skipWs();
		var body = readBalanced("{", "}");
		var parsed = parseSwitchBody(body);
		return Switch(expr, parsed.cases, parsed.defaultBody);
	}

	function parseSwitchBody(body:String):{cases:Array<HrzSwitchCase>, defaultBody:Array<HrzNode>} {
		var cases:Array<HrzSwitchCase> = [];
		var defaultBody:Array<HrzNode> = [];
		var i = 0;

		function skipWsLocal():Void {
			while (i < body.length && isWsChar(body.charAt(i)))
				i++;
		}

		function readWordLocal():String {
			skipWsLocal();
			var start = i;
			while (i < body.length && isIdentChar(body.charAt(i)))
				i++;
			return body.substring(start, i);
		}

		while (true) {
			skipWsLocal();
			if (i >= body.length)
				break;
			var w = readWordLocal();
			if (w == "case") {
				skipWsLocal();
				var braceIdx = body.indexOf("{", i);
				if (braceIdx < 0)
					Context.error("switch case must use { ... } block", pos);
				var rawValues = body.substring(i, braceIdx).trim();
				if (StringTools.endsWith(rawValues, ":"))
					rawValues = rawValues.substr(0, rawValues.length - 1).trim();
				var values = splitTopLevelCommas(rawValues);
				if (values.length == 0)
					Context.error("switch case requires a value", pos);
				var block = readBalancedFromString(body, braceIdx, "{", "}");
				i = block.next;
				var sub = new MixedParser(block.inner, pos);
				var nodes = sub.parseNodesUntilEof();
				cases.push({values: values, body: nodes});
				continue;
			}
			if (w == "default") {
				skipWsLocal();
				var braceIdx2 = body.indexOf("{", i);
				if (braceIdx2 < 0)
					Context.error("switch default must use { ... } block", pos);
				var block2 = readBalancedFromString(body, braceIdx2, "{", "}");
				i = block2.next;
				var sub2 = new MixedParser(block2.inner, pos);
				defaultBody = sub2.parseNodesUntilEof();
				continue;
			}
			Context.error("Unsupported switch section: " + w, pos);
			break;
		}

		return {cases: cases, defaultBody: defaultBody};
	}

	function parseBraceBlockNodes():Array<HrzNode> {
		skipWs();
		var inner = readBalanced("{", "}");
		// parse inner as nodes list (not a full element)
		var sub = new MixedParser(inner, pos);
		var nodes = sub.parseNodesUntilEof();
		sub.skipWs();
		if (!sub.eof()) {
			var rest = sub.remaining().trim();
			if (rest.length > 0)
				Context.error("Unexpected content in control block", pos);
		}
		return nodes;
	}

	function parseNodesUntilEof():Array<HrzNode> {
		var out:Array<HrzNode> = [];
		while (true) {
			if (eof())
				return out;

			if (trySkipBangMarkup())
				continue;

			if (peek() == "<")
				out.push(parseElement());
			else if (peek() == "@") {
				var n = parseAt();
				if (n != null)
					out.push(n);
			} else {
				var start = p;
				while (!eof() && peek() != "<" && peek() != "@")
					p++;
				var raw = s.substring(start, p);
				var text = normalizeText(raw);
				if (!isAllWhitespace(text))
					out.push(Text(text));
			}
		}
		return out;
	}

	function readWord():String {
		skipWs();
		var start = p;
		while (!eof()) {
			var c = peek();
			var ok = (c >= "a" && c <= "z") || (c >= "A" && c <= "Z") || (c >= "0" && c <= "9") || c == "_";
			if (!ok)
				break;
			p++;
		}
		return s.substring(start, p);
	}

	function isIdentStartChar(c:String):Bool {
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

	function readInlineExprFromString(str:String, start:Int):{expr:String, next:Int} {
		if (start >= str.length)
			return {expr: "", next: start};
		if (!isIdentStartChar(str.charAt(start)))
			return {expr: "", next: start};
		var i = start + 1;
		while (i < str.length && isIdentChar(str.charAt(i)))
			i++;

		var depthP = 0;
		var depthB = 0;
		var depthC = 0;
		var inStr = false;
		var strCh = '"';
		var esc = false;

		while (i < str.length) {
			var c = str.charAt(i);
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
			} else if (c == '"' || c == "'") {
				inStr = true;
				strCh = c;
				i++;
				continue;
			}

			switch (c) {
				case "(":
					depthP++;
					i++;
					continue;
				case ")":
					if (depthP == 0)
						return {expr: str.substring(start, i), next: i};
					depthP--;
					i++;
					continue;
				case "[":
					depthB++;
					i++;
					continue;
				case "]":
					if (depthB == 0)
						return {expr: str.substring(start, i), next: i};
					depthB--;
					i++;
					continue;
				case "{":
					depthC++;
					i++;
					continue;
				case "}":
					if (depthC == 0)
						return {expr: str.substring(start, i), next: i};
					depthC--;
					i++;
					continue;
				default:
			}

			if (depthP == 0 && depthB == 0 && depthC == 0) {
				if (isInlineBoundaryChar(c)) {
					var next = (i + 1 < str.length) ? str.charAt(i + 1) : "";
					if (c == "?" && (next == "." || next == "?" || next == "[")) {
						i++;
						continue;
					}
					break;
				}
			}
			i++;
		}
		return {expr: str.substring(start, i), next: i};
	}

	function readBalancedFromString(str:String, start:Int, open:String, close:String):{inner:String, next:Int} {
		if (start >= str.length || str.charAt(start) != open)
			Context.error('Expected "' + open + '"', pos);
		var i = start + 1;
		var depth = 1;
		var inStr = false;
		var strCh = '"';
		var esc = false;
		while (i < str.length) {
			var c = str.charAt(i);
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
			} else if (c == '"' || c == "'") {
				inStr = true;
				strCh = c;
				i++;
				continue;
			}
			if (c == open) {
				depth++;
				i++;
				continue;
			}
			if (c == close) {
				depth--;
				i++;
				if (depth == 0) {
					return {inner: str.substring(start + 1, i - 1), next: i};
				}
				continue;
			}
			i++;
		}
		Context.error("Unclosed balanced block " + open + "..." + close, pos);
		return {inner: "", next: str.length};
	}

	static function splitTopLevelIn(s:String):Null<{varName:String, iterExpr:String}> {
		// naive but ok: find " in " not inside parentheses/brackets/braces/strings
		var depthP = 0;
		var depthB = 0;
		var depthC = 0;
		var inStr = false;
		var strCh = '"';
		var esc = false;

		for (i in 0...s.length - 3) {
			var c = s.charAt(i);

			if (inStr) {
				if (esc) {
					esc = false;
					continue;
				}
				if (c == "\\") {
					esc = true;
					continue;
				}
				if (c == strCh)
					inStr = false;
				continue;
			} else {
				if (c == '"' || c == "'") {
					inStr = true;
					strCh = c;
					continue;
				}
			}

			switch (c) {
				case "(":
					depthP++;
				case ")":
					depthP--;
				case "[":
					depthB++;
				case "]":
					depthB--;
				case "{":
					depthC++;
				case "}":
					depthC--;
				default:
			}

			if (depthP == 0 && depthB == 0 && depthC == 0) {
				if (s.substr(i, 4) == " in ") {
					var left = s.substring(0, i).trim();
					var right = s.substring(i + 4).trim();
					// left must be identifier (простое правило)
					var ok = ~/^[A-Za-z_][A-Za-z0-9_]*$/.match(left);
					if (!ok)
						return null;
					return {varName: left, iterExpr: right};
				}
			}
		}
		return null;
	}

	static function splitTopLevelCommas(s:String):Array<String> {
		var out:Array<String> = [];
		var depthP = 0;
		var depthB = 0;
		var depthC = 0;
		var inStr = false;
		var strCh = '"';
		var esc = false;
		var start = 0;

		for (i in 0...s.length) {
			var c = s.charAt(i);
			if (inStr) {
				if (esc) {
					esc = false;
					continue;
				}
				if (c == "\\") {
					esc = true;
					continue;
				}
				if (c == strCh)
					inStr = false;
				continue;
			} else if (c == '"' || c == "'") {
				inStr = true;
				strCh = c;
				continue;
			}

			switch (c) {
				case "(":
					depthP++;
				case ")":
					depthP--;
				case "[":
					depthB++;
				case "]":
					depthB--;
				case "{":
					depthC++;
				case "}":
					depthC--;
				case ",":
					if (depthP == 0 && depthB == 0 && depthC == 0) {
						var part = s.substring(start, i).trim();
						if (part.length > 0)
							out.push(part);
						start = i + 1;
					}
				default:
			}
		}
		var last = s.substring(start).trim();
		if (last.length > 0)
			out.push(last);
		return out;
	}
}
#end
