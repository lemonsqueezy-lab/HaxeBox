package sandbox;

@:native("Sandbox.SceneSpriteSystem")
final extern class SceneSpriteSystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    function Dispose():Void;
}
