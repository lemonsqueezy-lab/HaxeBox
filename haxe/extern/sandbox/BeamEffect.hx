package sandbox;

/** The BeamEffect component creates a visual beam effect in the scene, simulating a continuous line or laser-like effect. Unlike LineRenderer these beams can change over time, spawn multiple instances, and have various properties like color, texture, and lifetime. This is a useful component for creating things like laser beams, energy effects and tracers. */
@:native("Sandbox.BeamEffect")
final extern class BeamEffect {
    function new():Void;
    /** Thickness of the beam in world units. Controls how wide the beam appears. */
    var Scale(default,default):sandbox.ParticleFloat;
    /** World position the beam targets if no target object is set. Used as the endpoint for the beam. */
    var TargetPosition(default,default):Vector3;
    /** GameObject to target with the beam. If assigned, overrides TargetPosition and uses the object's world position as the endpoint. */
    var TargetGameObject(default,default):sandbox.GameObject;
    /** Random offset applied to the target position for visual variation. Adds randomness to the endpoint. */
    var TargetRandom(default,default):Vector3;
    /** If true, the beam endpoints follow their source and target positions each frame, updating dynamically. */
    var FollowPoints(default,default):Bool;
    /** Number of beams spawned per second. Controls the spawn rate for continuous effects. */
    var BeamsPerSecond(default,default):Single;
    /** Maximum number of beams that can exist at once. Limits the total active beams. */
    var MaxBeams(default,default):Int;
    /** Number of beams spawned immediately when the effect is enabled. */
    var InitialBurst(default,default):Int;
    /** Lifetime of each beam in seconds. Determines how long a beam remains before being removed or respawned. */
    var BeamLifetime(default,default):sandbox.ParticleFloat;
    /** If true, beams respawn automatically when they expire, creating a looping effect. */
    var Looped(default,default):Bool;
    /** Texture applied to the beam. Defines the visual appearance along the beam's length. */
    var Texture(default,default):sandbox.Texture;
    /** Material applied to the beam. Defines the visual appearance along the beam's length. The material should be based on the `line.shader`. */
    var Material(default,default):sandbox.Material;
    /** Offset of the texture along the beam. Shifts the texture start position. */
    var TextureOffset(default,default):sandbox.ParticleFloat;
    /** Scale of the texture along the beam. Controls how many world units each texture tile covers. */
    var TextureScale(default,default):sandbox.ParticleFloat;
    /** Speed at which the texture scrolls along the beam. Positive values scroll in one direction, negative in the other. */
    var TextureScrollSpeed(default,default):sandbox.ParticleFloat;
    /** This is pretty much the same as TextureOffset - but it's seperate so you can use offset for offset, and scroll to scroll. */
    var TextureScroll(default,default):sandbox.ParticleFloat;
    /** Controls texture filtering on this beam effect. */
    var FilterMode(default,default):sandbox.rendering.FilterMode;
    /** Color gradient of the beam over its lifetime. Defines how the color changes from birth to death. */
    var BeamColor(default,default):sandbox.ParticleGradient;
    /** Alpha multiplier for the beam's color. Controls transparency over the beam's lifetime. */
    var Alpha(default,default):sandbox.ParticleFloat;
    /** Brightness multiplier for the beam's color. Adjusts intensity over the beam's lifetime. */
    var Brightness(default,default):sandbox.ParticleFloat;
    /** If true, the beam is rendered additively, making it appear to glow. */
    var Additive(default,default):Bool;
    /** If true, the beam casts shadows in the scene. */
    var Shadows(default,default):Bool;
    /** If true, the beam is affected by scene lighting. */
    var Lighting(default,default):Bool;
    /** If true, the beam is rendered as opaque rather than transparent. */
    var Opaque(default,default):Bool;
    /** Amount of feathering applied to the beam's depth, softening its intersection with geometry. */
    var DepthFeather(default,default):Single;
    /** If true, the beam visually travels from start to end, useful for tracer effects. */
    var TravelBetweenPoints(default,default):Bool;
    /** Controls the interpolation of the beam's travel effect over its lifetime. */
    var TravelLerp(default,default):sandbox.ParticleFloat;
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
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    /** Spawns a new beam and adds it to the effect. */
    function SpawnBeam():sandbox.beameffect.BeamInstance;
}
