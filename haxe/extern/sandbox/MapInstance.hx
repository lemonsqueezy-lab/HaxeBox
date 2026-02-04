package sandbox;

/** Allows you to load a map into the Scene. This can be either a vpk or a scene map. */
@:native("Sandbox.MapInstance")
extern class MapInstance {
    function new():Void;
    var MapName(default,default):String;
    var UseMapFromLaunch(default,default):Bool;
    var EnableCollision(default,default):Bool;
    /** True if the map is loaded */
    var IsLoaded(default,never):Bool;
    /** Called when the map has successfully loaded */
    var OnMapLoaded(default,default):system.Action;
    /** Called when the map has been unloaded */
    var OnMapUnloaded(default,default):system.Action;
    /** Get the world bounds of the map */
    var Bounds(default,never):BBox;
    var NoOrigin(default,default):Bool;
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
    /** Override this to add components to a map object. Only called for map objects that are not implemented. */
    @:protected function OnCreateObject(go:sandbox.GameObject, kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function OnDirty():Void;
    @:protected function OnLoad(context:sandbox.LoadingContext):system.threading.tasks.Task;
    @:protected function OnTagsChanged():Void;
    @:protected function OnUpdate():Void;
    /** Unload the current map. */
    function UnloadMap():Void;
}
