package sandbox;

/** Adds an approximation of ambient occlusion using Screen Space Ambient Occlusion (SSAO). It darkens areas where ambient light is generally occluded from such as corners, crevices and surfaces that are close to each other. */
@:native("Sandbox.AmbientOcclusion")
final extern class AmbientOcclusion extends sandbox.BasePostProcess<sandbox.AmbientOcclusion> {
    function new():Void;
    /** The intensity of the darkening effect. Has no impact on performance. */
    var Intensity(default,default):Single;
    /** Maximum distance of samples from pixel when determining its occlusion, in world units. */
    var Radius(default,default):Int;
    /** Gently reduce sample impact as it gets out of the effect's radius bounds */
    var FalloffRange(default,default):Single;
    /** How we should denoise the effect */
    var DenoiseMode(default,default):sandbox.ambientocclusion.DenoiseModes;
    /** Slightly reduce impact of samples further back to counter the bias from depth-based (incomplete) input scene geometry data */
    var ThinCompensation(default,default):Single;
    var Quality(default,default):sandbox.ambientocclusion.SampleQuality;
    function Render():Void;
}
