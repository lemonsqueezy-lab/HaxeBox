package sandbox.engine.resources;

/** Defines a navigation area resource for use in navigation meshes. */
@:native("Sandbox.Engine.Resources.NavMeshAreaDefinition")
final extern class NavMeshAreaDefinition {
    function new():Void;
    /** Debug color for this Area. */
    var Color(default,default):Color;
    /** How much costlier it is to cross this Area. Will be clamped. */
    var CostMultiplier(default,default):Single;
    /** Gets or sets the priority level for the area definition. Higher values take precedence if multiple areas overlap. */
    var Priority(default,default):Int;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    @:protected function PostLoad():Void;
    @:protected function PostReload():Void;
}
