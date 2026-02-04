package sandbox;

/** A cubemap probe that captures the environment around it. */
@:native("Sandbox.EnvmapProbe")
final extern class EnvmapProbe {
    function new():Void;
    var Mode(default,default):sandbox.envmapprobe.EnvmapProbeMode;
    var Projection(default,default):sandbox.scenecubemap.ProjectionMode;
    var TintColor(default,default):Color;
    var Bounds(default,default):BBox;
    var Feathering(default,default):Single;
    /** Gets or sets the priority level for the object. */
    var Priority(default,default):Int;
    /** If this is set, the EnvmapProbe will use a custom cubemap texture instead of rendering dynamically */
    var Texture(default,default):sandbox.Texture;
    /** The texture that was baked for this envmap probe */
    var BakedTexture(default,default):sandbox.Texture;
    var RenderDynamically(default,default):Bool;
    /** Resolution of the cubemap texture */
    var Resolution(default,default):sandbox.envmapprobe.CubemapResolution;
    var ZNear(default,default):Single;
    var ZFar(default,default):Single;
    var UpdateStrategy(default,default):sandbox.envmapprobe.CubemapDynamicUpdate;
    /** Only update dynamically if we're this close to it */
    var MaxDistance(default,default):Single;
    var DelayBetweenUpdates(default,default):Single;
    var FrameInterval(default,default):Int;
    /** Minimum amount of reflection bounces to render when first enabled before settling, at cost of extra performance on load Often times you don't need this */
    var MultiBounce(default,default):Bool;
    var ComponentVersion(default,never):Int;
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
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
    var Dirty(default,default):Bool;
    /** Bake this envmap now. This will stop it being dynamic if it was. */
    function Bake(ct:system.threading.CancellationToken):system.threading.tasks.Task;
    static function BakeAll():system.threading.tasks.Task;
    @:protected function DrawGizmos():Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnLoad(context:sandbox.LoadingContext):system.threading.tasks.Task;
    /** Tags have been updated - lets update our tags */
    @:protected function OnTagsChanged():Void;
    @:protected function OnUpdate():Void;
}
