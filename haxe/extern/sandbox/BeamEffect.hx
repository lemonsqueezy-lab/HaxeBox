package sandbox;

/** The BeamEffect component creates a visual beam effect in the scene, simulating a continuous line or laser-like effect. Unlike LineRenderer these beams can change over time, spawn multiple instances, and have various properties like color, texture, and lifetime. This is a useful component for creating things like laser beams, energy effects and tracers. */
@:native("Sandbox.BeamEffect")
final extern class BeamEffect extends sandbox.Component {
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
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
    /** Spawns a new beam and adds it to the effect. */
    function SpawnBeam():sandbox.beameffect.BeamInstance;
}
