package;

#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.PositionTools;
#end

using StringTools;

class HaxeBoxMacro {
	#if macro
	static var ATTR:Map<String, String> = [__ATTR__];

	public static function init() {
		Compiler.addGlobalMetadata("", "@:build(HaxeBoxMacro.build())", true);
	}

	public static function build():Array<Field> {
		var fields = Context?.getBuildFields() ?? [];

		var cls = Context.getLocalClass()?.get();
		if (cls == null)
			return fields;

		var file = (PositionTools.getInfos(cls.pos).file ?? "").toLowerCase();
		if (!file.startsWith("code") && !file.startsWith("editor"))
			return fields;

		cls.meta.add(":nativeGen", [], cls.pos);
		if (!cls.meta.has(":native"))
			cls.meta.add(":native", [macro $v{cls.module}], cls.pos);

		return [
			for (field in fields) {
				field.meta = [
					for (m in field.meta) {
						var name = m.name.charAt(0) == ":" ? m.name.substr(1) : m.name;
						if (ATTR.exists(name)) {
							pos: m.pos,
							name: ":meta",
							params: [
								macro $i{ATTR[name]}(${
									for (p in m.params ?? [])
										p
								})
							]
						} else m;
					}
				];
				switch field.kind {
					case FProp(get, set, t, e):
						field.meta.push({
							pos: field.pos,
							name: ":property"
						});
					default:
				}
				field;
			}
		];
	}
	#end
}
