package sandbox;

/** A decal which can be applied to objects and surfaces. */
@:native("Sandbox.DecalDefinition")
final extern class DecalDefinition {
    function new():Void;
    var Decals(default,default):system.collections.generic.List<sandbox.decaldefinition.DecalEntry>;
    /** The color map to use for the decal including transparency which masks the decal. This must be set for other textures to use the decal mask. */
    var ColorTexture(default,default):sandbox.Texture;
    /** The normal texture map to use for the decal. */
    var NormalTexture(default,default):sandbox.Texture;
    /** The Roughness/Metal/Ambient Occlusion texture map to use for the decal, stored in the respective RGB channels. */
    var RoughMetalOcclusionTexture(default,default):sandbox.Texture;
    /** The emissive texture map to use for the decal. */
    var EmissiveTexture(default,default):sandbox.Texture;
    /** Strength of the emission effect. */
    var EmissionEnergy(default,default):Single;
    /** The height texture to use for parallax mapping. */
    var HeightTexture(default,default):sandbox.Texture;
    /** Strength of the parallax effect. */
    var ParallaxStrength(default,default):Single;
    /** Tints the color of the decal's albedo and can be used to adjust the overall opacity of the decal. */
    var Tint(default,default):Color;
    /** Controls the opacity of the decal's color texture without reducing the impact of the normal or rmo texture. Set to 0 to create a normal/rmo only decal masked by the color textures alpha. */
    var ColorMix(default,default):Single;
    /** Width of the decal. */
    var Width(default,default):Single;
    /** Height of the decal. */
    var Height(default,default):Single;
    /** How the texture gets filtered. */
    var FilterMode(default,default):sandbox.rendering.FilterMode;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
}
