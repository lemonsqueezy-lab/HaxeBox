package sandbox;

/** Renders particles as 2D sprites */
@:native("Sandbox.ParticleTextRenderer")
final extern class ParticleTextRenderer extends sandbox.ParticleRenderer {
    function new():Void;
    var Text(default,default):sandbox.textrendering.Scope;
    var Pivot(default,default):Vector2;
    var Scale(default,default):Single;
    var DepthFeather(default,default):Single;
    var FogStrength(default,default):Single;
    var Additive(default,default):Bool;
    var Shadows(default,default):Bool;
    var Lighting(default,default):Bool;
    /** Indicates whether the sprite is opaque, optimizing rendering by skipping sorting. */
    var Opaque(default,default):Bool;
    var TextureFilter(default,default):sandbox.rendering.FilterMode;
    /** Aligns the sprite to face its velocity direction. */
    var FaceVelocity(default,default):Bool;
    /** Offset applied to the rotation when facing velocity. */
    var RotationOffset(default,default):Single;
    /** Enables motion blur effects for the sprite. */
    var MotionBlur(default,default):Bool;
    /** Determines whether the motion blur effect includes a leading trail. */
    var LeadingTrail(default,default):Bool;
    /** Amount of blur applied to the sprite during motion blur. */
    var BlurAmount(default,default):Single;
    /** Spacing between blur samples in the motion blur effect. */
    var BlurSpacing(default,default):Single;
    /** Opacity of the blur effect applied to the sprite. */
    var BlurOpacity(default,default):Single;
    /** Alignment mode for the sprite's billboard behavior. */
    var Alignment(default,default):sandbox.particlespriterenderer.BillboardAlignment;
    /** Sorting mode used for rendering particles. */
    var SortMode(default,default):sandbox.particletextrenderer.ParticleSortMode;
    /** Interface property to determine if particles should be sorted */
    var IsSorted(default,never):Bool;
    /** Provides texture for rendering the sprite */
    var RenderTexture(default,never):sandbox.Texture;
    @:protected function OnAwake():Void;
}
