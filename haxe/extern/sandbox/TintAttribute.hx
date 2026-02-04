package sandbox;

@:native("Sandbox.TintAttribute")
extern class TintAttribute {
    function new(tint:sandbox.EditorTint):Void;
    var TypeId(default,never):cs.system.Object;
    var Tint(default,default):sandbox.EditorTint;
}
