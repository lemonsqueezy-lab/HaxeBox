package sandbox;

/** Ask codegen to shit itself if the parameter isn't passed in as a string literal */
@:native("Sandbox.StringLiteralOnlyAttribute")
extern class StringLiteralOnlyAttribute extends system.Attribute {
    function new():Void;
}
