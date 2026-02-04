package sandbox;

/** Renders a sprite in the world */
@:native("Sandbox.SpriteRenderer")
final extern class SpriteRenderer {
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
    var ComponentVersion(default,never):Int;
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
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
    @:protected function DrawGizmos():Void;
    @:protected function OnUpdate():Void;
    /** Play an animation by index (the first animation is index 0). */
    overload function PlayAnimation(index:Int):Void;
    overload function PlayAnimation(name:String):Void;
}
