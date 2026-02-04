package sandbox;

/** Manages post-processing effects for cameras and volumes within a scene, handling their application during rendering and editor preview stages. */
@:native("Sandbox.PostProcessSystem")
final extern class PostProcessSystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
}
