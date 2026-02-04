package sandbox;

@:native("Sandbox.VolumetricFogParameters")
extern class VolumetricFogParameters {
    function new():Void;
    /** Indicates whether the fog system is enabled. */
    var Enabled(default,default):Bool;
    /** Level of anisotropy. */
    var Anisotropy(default,default):Single;
    /** Scattering value. */
    var Scattering(default,default):Single;
    /** Draw distance. */
    var DrawDistance(default,default):Single;
    /** Start distance where fading begins. */
    var FadeInStart(default,default):Single;
    /** End distance where fading concludes. */
    var FadeInEnd(default,default):Single;
    /** Strength of indirect illumination. */
    var IndirectStrength(default,default):Single;
    /** Provides indirect lighting from a baked volume texture. This gets compiled with your map and is provided by an env_volumetric_controller. */
    var BakedIndirectTexture(default,default):sandbox.Texture;
}
