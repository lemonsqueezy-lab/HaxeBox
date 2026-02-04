package sandbox;

/** A box which can be used to explicitly control scene visibility. There are two modes: 1. Cull inside, hide any objects fully inside the box (excluder) 2. Cull outside, hide any objects not intersecting any cull boxes marked cull outside (includer) */
@:native("Sandbox.SceneCullingBox")
final extern class SceneCullingBox {
    /** Create a scene culling box. Each scene world can have a list of boxes which can be used to explicitly cull objects inside or outside the boxes. */
    function new(world:sandbox.SceneWorld, transform:Transform, size:Vector3, mode:sandbox.scenecullingbox.CullMode):Void;
    /** Is this culling box valid, exists inside a scene world. */
    var IsValid(default,never):Bool;
    /** The scene world this culling box belongs to. */
    var World(default,never):sandbox.SceneWorld;
    /** Position and rotation of this box, scale will scale the box size */
    var Transform(default,default):Transform;
    /** Size of this box, transform scale will scale this size */
    var Size(default,default):Vector3;
    /** Cull mode, either inside or outside */
    var Mode(default,default):sandbox.scenecullingbox.CullMode;
    /** Delete this culling box. You shouldn't access it anymore. */
    function Delete():Void;
}
