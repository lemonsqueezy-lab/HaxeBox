package sandbox;

/** Renders particles as 2D sprites - can be static or animated */
@:native("Sandbox.ParticleSpriteRenderer")
final extern class ParticleSpriteRenderer extends sandbox.ParticleRenderer {
    function new():Void;
    /** The sprite resource to render. This can be completely static or contain animation(s). */
    var Sprite(default,default):sandbox.Sprite;
    /** The animation that this sprite should start playing when the scene starts. */
    var StartingAnimationName(default,default):String;
    var PlaybackSpeed(default,default):Single;
    /** The scale of the sprite when rendered. */
    var Scale(default,default):Single;
    /** Whether or not the sprite should be rendered additively. */
    var Additive(default,default):Bool;
    /** Whether or not the sprite should cast shadows in the scene. */
    var Shadows(default,default):Bool;
    /** Whether or not the sprite should be lit by the scene lighting. */
    var Lighting(default,default):Bool;
    /** Indicates whether the sprite is opaque, optimizing rendering by skipping sorting. */
    var Opaque(default,default):Bool;
    /** The texture filtering mode used when rendering the sprite. For pixelated sprites use . */
    var TextureFilter(default,default):sandbox.rendering.FilterMode;
    /** Alignment mode for the sprite's billboard behavior. */
    var Alignment(default,default):sandbox.particlespriterenderer.BillboardAlignment;
    /** Sorting mode used for rendering particles. */
    var SortMode(default,default):sandbox.particlespriterenderer.ParticleSortMode;
    /** Amount of feathering applied to the depth, softening its intersection with geometry. */
    var DepthFeather(default,default):Single;
    /** The strength of the fog effect applied to the sprite. This determines how much the sprite blends with any fog in the scene. */
    var FogStrength(default,default):Single;
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
    /** The animation that is currently being played. Returns null if no sprite is set or the sprite has no animations. */
    var CurrentAnimation(default,never):sandbox.sprite.Animation;
    /** Whether or not the sprite is animated. This is true if the sprite has more than one animation or if the current animation has more than one frame. */
    var IsAnimated(default,never):Bool;
    /** Interface property to determine if particles should be sorted */
    var IsSorted(default,never):Bool;
    /** The pivot point of the sprite, used for rotation and scaling. This is in normalized coordinates (0 to 1). */
    var Pivot(default,never):Vector2;
    /** The texture being displayed from the sprite given the current frame/animation. */
    var Texture(default,default):sandbox.Texture;
    /** Provides texture for rendering - implementation for IBatchedParticleSpriteRenderer */
    var RenderTexture(default,never):sandbox.Texture;
    @:protected function OnAwake():Void;
    /** Set the animation by index (the first animation is index 0). */
    overload function SetAnimation(index:Int):Void;
    overload function SetAnimation(name:String):Void;
}
