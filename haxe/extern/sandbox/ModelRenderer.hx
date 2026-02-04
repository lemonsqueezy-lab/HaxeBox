package sandbox;

/** Renders a model in the world */
@:native("Sandbox.ModelRenderer")
extern class ModelRenderer {
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
    var RenderOptions(default,never):sandbox.RenderOptions;
    /** Attributes that are applied to the renderer based on the current material and shader. If the renderer is disabled, the changes are deferred until it is enabled again. Attributes are not saved to disk, and are not cloned when copying the renderer. */
    var Attributes(default,never):sandbox.RenderAttributes;
    /** A command list which is executed immediately before rendering this */
    var ExecuteBefore(default,default):sandbox.rendering.CommandList;
    /** A command list which is executed immediately after rendering this */
    var ExecuteAfter(default,default):sandbox.rendering.CommandList;
    /** The scene this Component is in. This is a shortcut for `GameObject.Scene`. */
    var Scene(default,never):sandbox.Scene;
    /** The transform of the GameObject this component belongs to. Components don't have their own transforms but they can access the transform of the GameObject they belong to. This is a shortcut for `GameObject.Transform`. */
    var Transform(default,never):sandbox.GameTransform;
    /** The GameObject this component belongs to. */
    var GameObject(default,never):sandbox.GameObject;
    /** Allow creating tasks that are automatically cancelled when the GameObject is destroyed. */
    @:protected
    var Task(null,never):sandbox.TaskSource;
    /** Access components on this component's GameObject */
    var Components(default,never):sandbox.ComponentList;
    /** The enable state of this . This doesn't tell you whether the component is actually active because its parent might be disabled. This merely tells you what the component wants to be. You should use to determine whether the object is truly active in the scene. */
    var Enabled(default,default):Bool;
    /** True if this Component is enabled, and all of its ancestor GameObjects are enabled */
    var Active(default,never):Bool;
    var IsValid(default,never):Bool;
    var OnComponentEnabled(default,default):system.Action;
    var OnComponentStart(default,default):system.Action;
    var OnComponentUpdate(default,default):system.Action;
    var OnComponentFixedUpdate(default,default):system.Action;
    var OnComponentDisabled(default,default):system.Action;
    var OnComponentDestroy(default,default):system.Action;
    var Tags(default,never):sandbox.ITagSet;
    /** Allows drawing of temporary debug shapes and text in the scene */
    var DebugOverlay(default,never):sandbox.DebugOverlaySystem;
    var Flags(default,default):sandbox.ComponentFlags;
    var Id(default,never):system.Guid;
    /** The local transform of the game object. */
    var LocalTransform(default,default):Transform;
    /** The local position of the game object. */
    var LocalPosition(default,default):Vector3;
    /** The local rotation of the game object. */
    var LocalRotation(default,default):Rotation;
    /** The local scale of the game object. */
    var LocalScale(default,default):Vector3;
    var Network(default,never):sandbox.gameobject.NetworkAccessor;
    /** True if this is a networked object and is owned by another client. This means that we're not controlling this object, so shouldn't try to move it or anything. */
    var IsProxy(default,never):Bool;
    /** The version of the component. Used by . */
    var ComponentVersion(default,never):Int;
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
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
