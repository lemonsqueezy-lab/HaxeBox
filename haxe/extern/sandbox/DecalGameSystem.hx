package sandbox;

@:native("Sandbox.DecalGameSystem")
final extern class DecalGameSystem {
    function new(scene:sandbox.Scene):Void;
    static var MaxDecals(default,never):Int;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    function ClearDecals():Void;
}
