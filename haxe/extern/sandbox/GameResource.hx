package sandbox;

/** Assets defined in C# and created through tools. You can define your own Custom Asset Types. */
@:native("Sandbox.GameResource")
extern class GameResource {
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
    /** Deserialize values from a JsonObject */
    function Deserialize(jso:system.text.json.nodes.JsonObject):Void;
    /** Get a list of packages that are needed to load this asset */
    function GetReferencedPackages():system.collections.generic.IEnumerable<String>;
    function LoadFromJson(json:String):Void;
    /** Called when this resource is being unloaded. Clean up any resources owned by this instance here. */
    @:protected function OnDestroy():Void;
    /** Called after we serialize, allowing you to store any extra or modify the output. */
    @:protected function OnJsonSerialize(node:system.text.json.nodes.JsonObject):Void;
    /** Called when the asset is first loaded from disk. */
    @:protected function PostLoad():Void;
    /** Called when the asset is recompiled/reloaded from disk. */
    @:protected function PostReload():Void;
    /** Pushes a context in which action graphs belonging to this resource can be serialized or deserialized. */
    @:protected function PushSerializationScope():system.IDisposable;
    /** Serialize the current state to a JsonObject */
    function Serialize():system.text.json.nodes.JsonObject;
    /** Should be called after the resource has been edited by the inspector */
    function StateHasChanged():Void;
}
