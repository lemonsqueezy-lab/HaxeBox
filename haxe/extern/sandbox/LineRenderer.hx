package sandbox;

/** Renders a line between a list of points */
@:native("Sandbox.LineRenderer")
final extern class LineRenderer {
    function new():Void;
    var UseVectorPoints(default,default):Bool;
    var Points(default,default):system.collections.generic.List<sandbox.GameObject>;
    var VectorPoints(default,default):system.collections.generic.List<Vector3>;
    var Face(default,default):sandbox.scenelineobject.FaceMode;
    var Color(default,default):sandbox.Gradient;
    var Width(default,default):sandbox.Curve;
    var Texturing(default,default):sandbox.TrailTextureConfig;
    var SplineInterpolation(default,default):Int;
    var SplineTension(default,default):Single;
    var SplineContinuity(default,default):Single;
    var SplineBias(default,default):Single;
    var AutoCalculateNormals(default,default):Bool;
    var StartCap(default,default):sandbox.scenelineobject.CapStyle;
    var EndCap(default,default):sandbox.scenelineobject.CapStyle;
    var Wireframe(default,default):Bool;
    var Opaque(default,default):Bool;
    var Additive(default,default):Bool;
    var CastShadows(default,default):Bool;
    var DepthFeather(default,default):Single;
    var FogStrength(default,default):Single;
    var Lighting(default,default):Bool;
    var CylinderSegments(default,default):Int;
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
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
    @:protected function OnTagsChanged():Void;
}
