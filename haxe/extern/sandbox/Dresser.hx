package sandbox;

/** Allows easily dressing a citizen or human in clothing */
@:native("Sandbox.Dresser")
final extern class Dresser {
    function new():Void;
    /** Where to get the clothing from */
    var Source(default,default):sandbox.dresser.ClothingSource;
    /** Who are we dressing? This should be the renderer of the body of a Citizen or Human */
    var BodyTarget(default,default):sandbox.SkinnedModelRenderer;
    /** Should we change the height too? */
    var ApplyHeightScale(default,default):Bool;
    var ManualHeight(default,default):Single;
    var ManualTint(default,default):Single;
    var ManualAge(default,default):Single;
    var Clothing(default,default):system.collections.generic.List<sandbox.clothingcontainer.ClothingEntry>;
    var WorkshopItems(default,default):system.collections.generic.List<String>;
    /** True if we're dressing, in an async way */
    var IsDressing(default,never):Bool;
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
    function Apply():system.threading.tasks.ValueTask;
    /** If we're dressing in an async way - stop it. */
    function CancelDressing():Void;
    function Clear():Void;
    @:protected function OnEnabled():Void;
    /** Called when Height, Age or Tint is changed */
    function OnManualChange(a:Single, b:Single):Void;
    @:protected function OnStart():Void;
    @:protected function OnValidate():Void;
    /** Make a random outfit */
    function Randomize():Void;
}
