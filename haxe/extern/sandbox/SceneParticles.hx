package sandbox;

/** A SceneObject used to render particles. We need to be careful with what we do here, because this object is created for in-engine particles as well as custom scene object particles. With custom particles there's no automatic Simulate, or deletion.. You're completely on your own. This is perhaps a good thing though, it's maybe what you want to happen. To be completely isolated and completely in control. But at the same time maybe it's not and it's something we need to sort out. */
@:native("Sandbox.SceneParticles")
extern class SceneParticles {
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
    var Attributes(default,never):sandbox.RenderAttributes;
    /** The scene world this object belongs to. */
    var World(default,never):sandbox.SceneWorld;
    /** Transform of this scene object, relative to its , or if parent is not set. */
    var Transform(default,default):Transform;
    /** Rotation of this scene object, relative to its , or if parent is not set. */
    var Rotation(default,default):Rotation;
    /** Position of this scene object, relative to its , or if parent is not set. */
    var Position(default,default):Vector3;
    /** Set or get the axis aligned bounding box for this object. */
    var Bounds(default,default):BBox;
    /** Set the axis aligned bounding box by transforming by this objects transform. */
    var LocalBounds(default,default):BBox;
    /** Whether this scene object should render or not. */
    var RenderingEnabled(default,default):Bool;
    /** Color tint of this scene object. */
    var ColorTint(default,default):Color;
    /** Movement parent of this scene object, if any. */
    var Parent(default,never):sandbox.SceneObject;
    /** The model this scene object will render. */
    var Model(default,default):sandbox.Model;
    /** State of all bodygroups of this object's model. You might be looking for . */
    var MeshGroupMask(default,default):system.UInt64;
    /** This object is not batchable by material for some reason ( example: has dynamic attributes that affect rendering ) */
    var Batchable(default,default):Bool;
    /** Access to various advanced scene object flags. */
    var Flags(default,never):sandbox.sceneobject.SceneObjectFlagAccessor;
    /** For a layer to draw this object, the target layer must match (or be unset) and the flags must match */
    var RenderLayer(default,default):sandbox.SceneRenderLayer;
    /** List of tags for this scene object. */
    var Tags(default,never):sandbox.ITagSet;
    var ClipPlane(default,default):sandbox.Plane;
    var ClipPlaneEnabled(default,default):Bool;
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
