package sandbox;

@:native("Sandbox.TintAttribute")
extern class TintAttribute extends system.Attribute {
    function new(tint:sandbox.EditorTint):Void;
    var Tint(default,default):sandbox.EditorTint;
}
