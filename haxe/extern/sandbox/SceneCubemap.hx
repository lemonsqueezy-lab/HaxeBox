package sandbox;

@:native("Sandbox.SceneCubemap")
final extern class SceneCubemap extends sandbox.SceneLight {
    overload function new(sceneWorld:sandbox.SceneWorld):Void;
    overload function new(sceneWorld:sandbox.SceneWorld, texture:sandbox.Texture, bounds:BBox):Void;
    var Priority(default,default):Int;
    var Projection(default,default):sandbox.scenecubemap.ProjectionMode;
    var TintColor(default,default):Color;
    var Feathering(default,default):Single;
    var ProjectionBounds(default,default):BBox;
    var Texture(default,default):sandbox.Texture;
    /** Marks the cubemap as dirty, to be re-rendered on the next render. */
    function RenderDirty():Void;
}
