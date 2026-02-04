package sandbox;

/** Flags for clearing a RT before rendering a scene using a SceneCamera */
@:native("Sandbox.ClearFlags")
extern enum abstract ClearFlags(Int) {
    var None;
    var Color;
    var Depth;
    var Stencil;
    var All;
}
