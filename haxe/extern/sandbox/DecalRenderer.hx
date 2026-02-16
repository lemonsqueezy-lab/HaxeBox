package sandbox;

/** Component that creates a projected decal relative to its GameObject. */
@:native("Sandbox.DecalRenderer")
extern class DecalRenderer extends sandbox.Renderer {
    function new():Void;
    var Material(default,default):sandbox.Material;
    var Size(default,default):Vector3;
    var TintColor(default,default):Color;
    var TriPlanar(default,default):Bool;
}
