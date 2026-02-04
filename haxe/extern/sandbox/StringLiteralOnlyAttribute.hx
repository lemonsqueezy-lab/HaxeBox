package sandbox;

/** Ask codegen to shit itself if the parameter isn't passed in as a string literal */
@:native("Sandbox.StringLiteralOnlyAttribute")
extern class StringLiteralOnlyAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
