package sandbox.engine.resources;

/** Defines a navigation area resource for use in navigation meshes. */
@:native("Sandbox.Engine.Resources.NavMeshAreaDefinition")
final extern class NavMeshAreaDefinition extends sandbox.GameResource {
    function new():Void;
    /** Debug color for this Area. */
    var Color(default,default):Color;
    /** How much costlier it is to cross this Area. Will be clamped. */
    var CostMultiplier(default,default):Single;
    /** Gets or sets the priority level for the area definition. Higher values take precedence if multiple areas overlap. */
    var Priority(default,default):Int;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
