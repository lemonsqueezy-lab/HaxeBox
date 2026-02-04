package sandbox;

@:native("Sandbox.CubemapFogController")
extern class CubemapFogController {
    function new():Void;
    /** Adjust how quickly the cubemap blurs out at closer distances. A value of 0.0 always uses the lowest resolution MIP over the entire range, while a value of 1.0 uses the highest. */
    var LodBias(default,default):Single;
    /** The distance from the player at which the fog will start to fade in. */
    var StartDistance(default,default):Single;
    /** The distance from the player at which the fog will be at full strength. */
    var EndDistance(default,default):Single;
    /** Exponent for distance falloff. For example, 2.0 is proportional to square of distance. */
    var FalloffExponent(default,default):Single;
    /** The distance between the start of the height fog and where it is fully opaque. Setting this to 0 will disable height based blending. */
    var HeightWidth(default,default):Single;
    /** The absolute height in the map at which the height fog will start to fade in. */
    var HeightStart(default,default):Single;
    /** Exponent for height falloff. For example, 2.0 is proportional to square of distance. */
    var HeightExponent(default,default):Single;
    /** Is this cubemap fog active? */
    var Enabled(default,default):Bool;
    /** Cubemap texture to use for the fog. */
    var Texture(default,default):sandbox.Texture;
    /** Location of the fog. */
    var Transform(default,default):Transform;
    /** Tint of the fog. */
    var Tint(default,default):Color;
}
