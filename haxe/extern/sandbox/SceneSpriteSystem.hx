package sandbox;

@:native("Sandbox.SceneSpriteSystem")
final extern class SceneSpriteSystem extends sandbox.GameObjectSystem<sandbox.SceneSpriteSystem> {
    function new(scene:sandbox.Scene):Void;
    function Dispose():Void;
}
