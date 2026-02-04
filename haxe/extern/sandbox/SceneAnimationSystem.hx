package sandbox;

@:native("Sandbox.SceneAnimationSystem")
final extern class SceneAnimationSystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
}
