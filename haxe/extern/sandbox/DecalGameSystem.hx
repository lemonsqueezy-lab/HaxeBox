package sandbox;

@:native("Sandbox.DecalGameSystem")
final extern class DecalGameSystem extends sandbox.GameObjectSystem<sandbox.DecalGameSystem> {
    function new(scene:sandbox.Scene):Void;
    static var MaxDecals(default,never):Int;
    function ClearDecals():Void;
}
