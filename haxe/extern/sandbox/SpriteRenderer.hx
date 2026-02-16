package sandbox;

/** Renders a sprite in the world */
@:native("Sandbox.SpriteRenderer")
final extern class SpriteRenderer extends sandbox.Renderer {
    function new():Void;
    /** The sprite resource to render. This can be completely static or contain animation(s). */
    var Sprite(default,default):sandbox.Sprite;
    /** The animation that this sprite should start playing when the scene starts. */
    var StartingAnimationName(default,default):String;
    /** The playback speed of the animation. 0 is paused, and negative values will play the animation in reverse. */
    var PlaybackSpeed(default,default):Single;
    /** The width and height of the sprite in world units. */
    var Size(default,default):Vector2;
    /** The color of the sprite. This is multiplied with the texture color. */
    var Color(default,default):Color;
    var OverlayColor(default,default):Color;
    /** Whether or not the sprite should be rendered additively. */
    var Additive(default,default):Bool;
    /** Whether or not the sprite should cast shadows. */
    var Shadows(default,default):Bool;
    /** Whether or not the sprite should be rendered opaque. If true, any semi-transparent pixels will be dithered. */
    var Opaque(default,default):Bool;
    /** Alpha threshold for discarding pixels. Pixels with alpha below this value will be discarded. Only used when Opaque is true. Range: 0.0 (transparent) to 1.0 (opaque). Default is 0.5. */
    var AlphaCutoff(default,default):Single;
    /** Whether or not the sprite should be lit by the scene's lighting system. Otherwise it will be unlit/fullbright. */
    var Lighting(default,default):Bool;
    /** Amount of feathering applied to the depth, softening its intersection with geometry. */
    var DepthFeather(default,default):Single;
    /** The strength of the fog effect applied to the sprite. This determines how much the sprite blends with any fog in the scene. */
    var FogStrength(default,default):Single;
    /** Whether or not the sprite should be flipped horizontally. */
    var FlipHorizontal(default,default):Bool;
    /** Whether or not the sprite should be flipped vertically. */
    var FlipVertical(default,default):Bool;
    /** The texture filtering mode used when rendering the sprite. For pixelated sprites, use . */
    var TextureFilter(default,default):sandbox.rendering.FilterMode;
    /** Alignment mode for the sprite's billboard behavior. */
    var Billboard(default,default):sandbox.spriterenderer.BillboardMode;
    /** Whether or not the sprite should be sorted by depth. If the sprite is opaque, this can be turned off for a performance boost if not needed. */
    var IsSorted(default,default):Bool;
    /** This action is invoked when an animation starts playing. The string parameter is the name of the animation that started. */
    var OnAnimationStart(default,default):system.Action1<String>;
    /** This action is invoked when an animation finishes playing or has looped. The string parameter is the name of the animation. */
    var OnAnimationEnd(default,default):system.Action1<String>;
    /** This action is invoked when advancing to a new frame that has broadcast messages. The string parameter is the message being broadcast. */
    var OnBroadcastMessage(default,default):system.Action1<String>;
    /** The animation that is currently being played. Returns null if no sprite is set or the sprite has no animations. */
    var CurrentAnimation(default,never):sandbox.sprite.Animation;
    /** The index of the current frame being displayed. This will change over time if the sprite is animated, and can be set to go to a specific frame even during playback. */
    var CurrentFrameIndex(default,default):Int;
    /** Whether or not the sprite is animated. This is true if the sprite has more than one animation or if the current animation has more than one frame. */
    var IsAnimated(default,never):Bool;
    /** The texture of the current frame being displayed. Returns a transparent texture when no valid frame is available. */
    var Texture(default,default):sandbox.Texture;
    @:protected function DrawGizmos():Void;
    @:protected function OnUpdate():Void;
    /** Play an animation by index (the first animation is index 0). */
    overload function PlayAnimation(index:Int):Void;
    overload function PlayAnimation(name:String):Void;
}
