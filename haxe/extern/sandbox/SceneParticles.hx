package sandbox;

/** A SceneObject used to render particles. We need to be careful with what we do here, because this object is created for in-engine particles as well as custom scene object particles. With custom particles there's no automatic Simulate, or deletion.. You're completely on your own. This is perhaps a good thing though, it's maybe what you want to happen. To be completely isolated and completely in control. But at the same time maybe it's not and it's something we need to sort out. */
@:native("Sandbox.SceneParticles")
extern class SceneParticles extends sandbox.SceneObject {
    /** Create scene particles. */
    overload function new(world:sandbox.SceneWorld, particleSystem:String):Void;
    /** Create scene particles. */
    overload function new(world:sandbox.SceneWorld, particleSystem:sandbox.ParticleSystem):Void;
    /** Whether to render the particles or not. */
    var RenderParticles(default,default):Bool;
    /** Stop (or start) the particle system emission. */
    var EmissionStopped(default,default):Bool;
    /** Particle collisions use this physics world to perform traces. */
    var PhysicsWorld(default,default):sandbox.PhysicsWorld;
    /** The amount of particles */
    var ActiveParticlesSelf(default,never):Int;
    /** The amount of particles including child systems */
    var ActiveParticlesTotal(default,never):Int;
    /** The total allowed particle count */
    var MaximumParticles(default,never):Int;
    /** True if particle system has reached the end */
    var Finished(default,never):Bool;
    /** Get or set the simulation time */
    var SimulationTime(default,default):Single;
    /** Manually emit a bunch of particles */
    function Emit(count:Int):Void;
    /** Returns the position set on a given control point. */
    function GetControlPointPosition(index:Int):Vector3;
    /** Whether given control point has any data set. */
    function IsControlPointSet(index:Int):Bool;
    /** Set rotation on given control point. */
    overload function SetControlPoint(i:Int, rotation:Rotation):Void;
    overload function SetControlPoint(i:Int, transform:Transform):Void;
    overload function SetControlPoint(i:Int, position:Vector3):Void;
    overload function SetControlPoint(i:Int, model:sandbox.Model):Void;
    overload function SetControlPoint(i:Int, snapshot:sandbox.ParticleSnapshot):Void;
    /** Set vector on given named value. */
    function SetNamedValue(name:String, value:Vector3):Void;
    /** Simulate the particles for given amount of time. */
    function Simulate(f:Single):Void;
}
