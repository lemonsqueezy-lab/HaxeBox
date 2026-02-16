package sandbox;

/** Renders a model in the world */
@:native("Sandbox.ModelRenderer")
extern class ModelRenderer extends sandbox.Renderer {
    function new():Void;
    var Bounds(default,never):BBox;
    var LocalBounds(default,never):BBox;
    var Model(default,default):sandbox.Model;
    var Tint(default,default):Color;
    var CreateAttachments(default,default):Bool;
    var BodyGroups(default,default):system.UInt64;
    var HasBodyGroups(default,never):Bool;
    var MaterialGroup(default,default):String;
    var HasMaterialGroups(default,never):Bool;
    var RenderType(default,default):sandbox.modelrenderer.ShadowRenderType;
    /** Force a level of detail. */
    var LodOverride(default,default):Null<Int>;
    var SceneObject(default,never):sandbox.SceneObject;
    var MaterialOverride(default,default):sandbox.Material;
    /** Access to the materials */
    var Materials(default,never):sandbox.engine.MaterialAccessor;
    /** Completely stop overriding materials */
    function ClearMaterialOverrides():Void;
    /** Copy everything from another renderer */
    function CopyFrom(other:sandbox.Renderer):Void;
    /** Get the GameObject of a specific attachment. */
    overload function GetAttachmentObject(name:String):sandbox.GameObject;
    overload function GetAttachmentObject(attachment:sandbox.modelattachments.Attachment):sandbox.GameObject;
    /** Get body group value by index */
    overload function GetBodyGroup(part:Int):Int;
    overload function GetBodyGroup(name:String):Int;
    function GetBoneObject(bone:sandbox.bonecollection.Bone):sandbox.GameObject;
    function GetMaterial(triangle:Int):sandbox.Material;
    @:protected function OnDirty():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnRenderOptionsChanged():Void;
    /** Tags have been updated - lets update our scene object tags */
    @:protected function OnTagsChanged():Void;
    /** Set body group value by index */
    overload function SetBodyGroup(part:Int, value:Int):Void;
    overload function SetBodyGroup(name:String, value:Int):Void;
    overload function SetBodyGroup(name:String, choice:String):Void;
    function SetMaterial(material:sandbox.Material, triangle:Int):Void;
    /** Set a material override for a material with a specific attribute set. For example, if you have a model with lots of different materials, but one of them has an attribute "skin" set to "1", then calling this with a material and "skin" will override only that material. */
    function SetMaterialOverride(material:sandbox.Material, target:String):Void;
    @:protected function UpdateObject():Void;
}
