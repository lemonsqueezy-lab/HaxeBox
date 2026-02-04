package sandbox;

/** Defines and holds particles. This is the core of the particle system. */
@:native("Sandbox.ParticleEffect")
final extern class ParticleEffect {
    function new():Void;
    /** The maximum number of particles that can exist in this effect at once. */
    var MaxParticles(default,default):Int;
    /** The lifetime of each particle, in seconds. */
    var Lifetime(default,default):sandbox.ParticleFloat;
    /** Scales the simulation time for this effect. */
    var TimeScale(default,default):Single;
    /** How many seconds to pre-warm this effect by when creating. */
    var PreWarm(default,default):Single;
    /** The delay before a particle starts after being emitted, in seconds. */
    var StartDelay(default,default):sandbox.ParticleFloat;
    /** Per-particle time scale multiplier. Allows each particle to have a unique simulation speed. */
    var PerParticleTimeScale(default,default):sandbox.ParticleFloat;
    /** How time is updated for this effect. */
    var Timing(default,default):sandbox.particleeffect.TimingMode;
    /** The initial velocity of the particle when it is created. This is applied before any forces are applied. */
    var InitialVelocity(default,default):sandbox.ParticleVector3;
    /** Apply an element of random velocity to the particle when it is created, in a random direction. */
    var StartVelocity(default,default):sandbox.ParticleFloat;
    /** The damping factor applied to particle velocity over time. This reduces the velocity of particles, simulating resistance or drag. */
    var Damping(default,default):sandbox.ParticleFloat;
    /** Move this delta constantly. Ignores velocity, collisions and drag. */
    var ConstantMovement(default,default):sandbox.ParticleVector3;
    var Space(default,default):sandbox.particleeffect.SimulationSpace;
    /** When 1 particles will be moved in local space relative to the emitter GameObject's transform. This allows particles to be emitted in a local space, like a fire effect that moves with the player, but the particles can slowly move to world space. */
    var LocalSpace(default,default):sandbox.ParticleFloat;
    /** Enables or disables rotation for particles. */
    var ApplyRotation(default,default):Bool;
    /** The pitch rotation of the particles. */
    var Pitch(default,default):sandbox.ParticleFloat;
    /** The yaw rotation of the particles. */
    var Yaw(default,default):sandbox.ParticleFloat;
    /** The roll rotation of the particles. */
    var Roll(default,default):sandbox.ParticleFloat;
    /** Enables or disables color application for particles. */
    var ApplyColor(default,default):Bool;
    /** Enables or disables alpha application for particles. */
    var ApplyAlpha(default,default):Bool;
    /** The tint color applied to particles. */
    var Tint(default,default):Color;
    /** The gradient used to color particles over their lifetime. */
    var Gradient(default,default):sandbox.ParticleGradient;
    /** The brightness multiplier applied to particles. */
    var Brightness(default,default):sandbox.ParticleFloat;
    /** The alpha transparency of particles. */
    var Alpha(default,default):sandbox.ParticleFloat;
    /** Enables or disables shape application for particles. */
    var ApplyShape(default,default):Bool;
    /** The scale of particles. */
    var Scale(default,default):sandbox.ParticleFloat;
    /** The stretch factor of particles, affecting their aspect ratio. */
    var Stretch(default,default):sandbox.ParticleFloat;
    /** Enables or disables the application of forces to particles. */
    var Force(default,default):Bool;
    /** The direction of the force applied to particles. */
    var ForceDirection(default,default):Vector3;
    /** The scale of the force applied to each particle. This multiplier determines the intensity of the force applied to particles. */
    var ForceScale(default,default):sandbox.ParticleFloat;
    /** The orbital force applied to particles, causing them to rotate around a point. */
    var OrbitalForce(default,default):sandbox.ParticleVector3;
    /** The pull strength of the orbital force, drawing particles closer to the center. */
    var OrbitalPull(default,default):sandbox.ParticleFloat;
    /** The simulation space in which forces are applied. Forces can be applied in either local space (relative to the emitter) or world space. */
    var ForceSpace(default,default):sandbox.particleeffect.SimulationSpace;
    /** Enables or disables collision behavior for particles. */
    var Collision(default,default):Bool;
    /** The chance that a particle will die upon collision. */
    var DieOnCollisionChance(default,default):sandbox.ParticleFloat;
    /** The radius used for collision detection. */
    var CollisionRadius(default,default):Single;
    /** The set of tags to ignore during collision detection. */
    var CollisionIgnore(default,default):sandbox.TagSet;
    /** The bounce factor applied to particles upon collision. */
    var Bounce(default,default):sandbox.ParticleFloat;
    /** The friction factor applied to particles upon collision. */
    var Friction(default,default):sandbox.ParticleFloat;
    /** The bumpiness factor applied to particles upon collision. */
    var Bumpiness(default,default):sandbox.ParticleFloat;
    /** The strength of the push force applied to particles upon collision. */
    var PushStrength(default,default):sandbox.ParticleFloat;
    /** Enables or disables the use of a sheet sequence for particles. */
    var SheetSequence(default,default):Bool;
    /** Which sequence to use. */
    var SequenceId(default,default):sandbox.ParticleFloat;
    /** Allows control of the sequence time, which spans from 0 to 1 for one loop. */
    var SequenceTime(default,default):sandbox.ParticleFloat;
    /** Increment the sequence time by this much. */
    var SequenceSpeed(default,default):sandbox.ParticleFloat;
    /** When enabled, snap to the nearest whole frame instead of blending between frames. */
    var SnapToFrame(default,default):Bool;
    /** Enables or disables the use of prefabs for particles. */
    var UsePrefabFeature(default,default):Bool;
    /** Will choose a random prefab to spawn from this list. */
    var FollowerPrefab(default,default):system.collections.generic.List<sandbox.GameObject>;
    /** If 1 then we'll always spawn a prefab. If 0.5 then we'll spawn a prefab 50% of the time. */
    var FollowerPrefabChance(default,default):sandbox.ParticleFloat;
    /** When true the prefab will be destroyed at the end of the particle's life. */
    var FollowerPrefabKill(default,default):Bool;
    /** Will choose a random prefab to spawn from this list. */
    var CollisionPrefab(default,default):system.collections.generic.List<sandbox.GameObject>;
    /** Will choose a random prefab to spawn from this list. */
    var CollisionPrefabAlign(default,default):Bool;
    /** We will by default align to the particle's angle, but we can also randomize that. */
    var CollisionPrefabRotation(default,default):sandbox.ParticleFloat;
    /** If 1 then we'll always spawn a prefab. If 0.5 then we'll spawn a prefab 50% of the time. */
    var CollisionPrefabChance(default,default):sandbox.ParticleFloat;
    /** Called any time a particle is destroyed. */
    var OnParticleDestroyed(default,default):system.Action1<sandbox.Particle>;
    /** Called any time a particle is created. */
    var OnParticleCreated(default,default):system.Action1<sandbox.Particle>;
    /** Active particles in the effect. Active particles are those currently being simulated and rendered. */
    var Particles(default,never):system.collections.generic.List<sandbox.Particle>;
    /** Delayed particles in the effect. Delayed particles are those that have been emitted but are waiting to be activated based on their start delay. */
    var DelayedParticles(default,never):system.collections.generic.List<sandbox.Particle>;
    /** The total number of particles in the effect, including both active and delayed particles. */
    var ParticleCount(default,never):Int;
    /** Whether the particle effect has reached its maximum capacity. This is determined by comparing the total particle count to the property. */
    var IsFull(default,never):Bool;
    /** Whether the particle simulation is currently paused. When paused, particles will not update their positions, velocities, or other properties. */
    var Paused(default,default):Bool;
    /** Called before the particles are stepped. This allows custom logic to be executed before the simulation advances. */
    var OnPreStep(default,default):system.Action1<Single>;
    /** Called after the particles are stepped. This allows custom logic to be executed after the simulation advances. */
    var OnPostStep(default,default):system.Action1<Single>;
    /** Called after each particle is stepped. This provides an opportunity to modify individual particles during the simulation. */
    var OnStep(default,default):system.Action2<sandbox.Particle,Single>;
    /** The bounding box that encompasses all active particles. This is useful for determining the spatial extent of the particle effect. */
    var ParticleBounds(default,never):BBox;
    /** The size of the largest particle in the effect. This is determined by the maximum scale of any particle along its x, y, or z axis. */
    var MaxParticleSize(default,never):Single;
    var ComponentVersion(default,never):Int;
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
    function Clear():Void;
    /** Emit a particle at the given position. */
    overload function Emit(position:Vector3):sandbox.Particle;
    overload function Emit(position:Vector3, delta:Single):sandbox.Particle;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    function ResetEmitters():Void;
    function Step(timeDelta:Single):Void;
    function Terminate(p:sandbox.Particle):Void;
}
