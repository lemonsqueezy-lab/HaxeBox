package sandbox;

/** Renders particles as 2D sprites */
@:native("Sandbox.ParticleTextRenderer")
final extern class ParticleTextRenderer {
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
    var ParticleEffect(default,default):sandbox.ParticleEffect;
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
    @:protected function OnAwake():Void;
}
