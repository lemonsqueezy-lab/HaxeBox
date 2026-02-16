package sandbox;

/** Dynamic Diffuse Global Illumination volume that provides indirect lighting using a 3D probe grid. Probes store irradiance and distance data in volume textures that can be sampled by shaders. */
@:native("Sandbox.IndirectLightVolume")
final extern class IndirectLightVolume extends sandbox.Component {
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
