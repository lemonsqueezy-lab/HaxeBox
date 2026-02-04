package sandbox;

/** A resource loaded in the engine, such as a or . */
@:native("Sandbox.Resource")
extern class Resource {
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    var IsValid(default,never):Bool;
    /** True if this resource has been changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    /** When publishing an asset we'll call into this method to allow the resource to configure how it wants to be published. This allows your resource to make bespoke decisions to configure publishing based on its content. */
    function ConfigurePublishing(context:sandbox.ResourcePublishContext):Void;
    /** Create an icon for this type of asset. This is an icon that is shown in the editor. */
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    /** Create a simple icon using an icon. This is used by default for asset types. */
    @:protected static function CreateSimpleAssetTypeIcon(icon:String, width:Int, height:Int, background:Null<Color>, foreground:Null<Color>):sandbox.Bitmap;
    @:protected function Finalize():Void;
    /** Get the icon for this type of asset. This is an icon that is shown in the editor. */
    function GetAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    /** Render a thumbnail for this specific resource. */
    function RenderThumbnail(options:sandbox.resource.ThumbnailOptions):sandbox.Bitmap;
    /** Should be called after the resource has been edited by the inspector */
    function StateHasChanged():Void;
    function ToString():String;
}
