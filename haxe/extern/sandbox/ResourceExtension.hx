package sandbox;

@:native("Sandbox.ResourceExtension`2")
extern class ResourceExtension<T,TSelf> {
    function new():Void;
    var ExtensionDefault(default,default):Bool;
    var ExtensionTargets(default,default):system.collections.generic.List<T>;
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
    static function FindAllForResource(r:sandbox.Resource):system.collections.generic.IEnumerable<TSelf>;
    static function FindDefault():TSelf;
    static function FindForResource(r:sandbox.Resource):TSelf;
    static function FindForResourceOrDefault(r:sandbox.Resource):TSelf;
}
