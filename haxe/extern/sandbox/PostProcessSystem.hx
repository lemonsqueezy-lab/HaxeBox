package sandbox;

/** Manages post-processing effects for cameras and volumes within a scene, handling their application during rendering and editor preview stages. */
@:native("Sandbox.PostProcessSystem")
final extern class PostProcessSystem extends sandbox.GameObjectSystem<sandbox.PostProcessSystem> {
    function new(scene:sandbox.Scene):Void;
}
