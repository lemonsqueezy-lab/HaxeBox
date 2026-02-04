package sandbox;

/** This component should be added to stuff you want to be outlined. You will also need to add the Highlight component to the camera you want to render the outlines. */
@:native("Sandbox.HighlightOutline")
extern class HighlightOutline {
    function new():Void;
    /** If defined, the glow will use this material rather than a generated one. */
    var Material(default,default):sandbox.Material;
    /** The colour of the glow outline */
    var Color(default,default):Color;
    /** The colour of the glow when the mesh is obscured by something closer. */
    var ObscuredColor(default,default):Color;
    /** Color of the inside of the glow */
    var InsideColor(default,default):Color;
    /** Color of the inside of the glow when the mesh is obscured by something closer. */
    var InsideObscuredColor(default,default):Color;
    /** The width of the line of the glow */
    var Width(default,default):Single;
    /** Specify targets of the outline manually */
    var OverrideTargets(default,default):Bool;
    /** Specify targets of the outline manually */
    var Targets(default,default):system.collections.generic.List<sandbox.Renderer>;
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
    /** Get a list of targets that we want to draw the outline around */
    function GetOutlineTargets():system.collections.generic.IEnumerable<sandbox.Renderer>;
}
