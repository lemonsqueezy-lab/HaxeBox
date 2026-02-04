package sandbox;

/** Dynamic Diffuse Global Illumination volume that provides indirect lighting using a 3D probe grid. Probes store irradiance and distance data in volume textures that can be sampled by shaders. */
@:native("Sandbox.IndirectLightVolume")
final extern class IndirectLightVolume {
    function new():Void;
    /** World-space bounding box that defines the volume coverage area. */
    var Bounds(default,default):BBox;
    /** Number of probes per 1024 world units. Higher values increase probe resolution. */
    var ProbeDensity(default,default):Int;
    /** Bias applied along surface normals to prevent self-occlusion artifacts. */
    var NormalBias(default,default):Single;
    /** Controls how much less energy to conserve during probe integration. Higher values give a harsher, more contrasty look. */
    var Contrast(default,default):Single;
    /** Calculated probe count along each axis based on bounds and density. */
    var ProbeCounts(default,never):Vector3Int;
    /** Volume texture storing probe irradiance data (color). */
    var IrradianceTexture(default,default):sandbox.Texture;
    /** Volume texture storing probe distance/visibility data. */
    var DistanceTexture(default,default):sandbox.Texture;
    /** Volume texture storing probe relocation offsets (XYZ = offset, W = active). */
    var RelocationTexture(default,default):sandbox.Texture;
    /** Maximum distance a probe can be relocated (as fraction of probe spacing). */
    var MaxRelocationDistanceFraction(default,default):Single;
    /** Minimum distance from surfaces to maintain (as fraction of probe spacing). */
    var MinSurfaceDistanceFraction(default,default):Single;
    /** Number of rays to cast when computing relocation. */
    var RelocationRayCount(default,default):Int;
    /** How to handle probes detected inside geometry. */
    var InsideGeometry(default,default):sandbox.indirectlightvolume.InsideGeometryBehavior;
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
    static function BakeAll():system.threading.tasks.Task;
    /** Starts the probe baking process to capture lighting into the volume textures. */
    function BakeProbes(ct:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Clears all probe relocation offsets. */
    function ClearProbeRelocation():Void;
    /** Computes probe relocation offsets for all probes in the volume. */
    function ComputeProbeRelocation():Void;
    @:protected function DrawGizmos():Void;
    /** Automatically sizes the volume to encompass all scene geometry. */
    function ExtendToSceneBounds():Void;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
}
