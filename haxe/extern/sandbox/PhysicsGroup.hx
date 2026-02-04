package sandbox;

/** Represents a set of PhysicsBody objects. Think ragdoll. */
@:native("Sandbox.PhysicsGroup")
final extern class PhysicsGroup {
    /** The world in which this group belongs */
    var World(default,never):sandbox.PhysicsWorld;
    /** Returns position of the first physics body of this group, or zero vector if it has none. */
    var Pos(default,never):Vector3;
    /** Returns the center of mass for this group of physics bodies. */
    var MassCenter(default,never):Vector3;
    /** Sets on all bodies of this group. */
    var Velocity(never,default):Vector3;
    /** Sets on all bodies of this group. */
    var AngularVelocity(never,default):Vector3;
    /** Physics bodies automatically go to sleep after a certain amount of time of inactivity to save on performance. You can use this to wake the body up, or prematurely send it to sleep. */
    var Sleeping(default,default):Bool;
    /** The total mass of all the dynamicPhysicsBodies in this group. When setting the total mass, it will be set on each body proportionally to each of their old masses, i.e. if a body had 25% of previous total mass, it will have 25% of new total mass. */
    var Mass(default,default):Single;
    /** Sets on all bodies in this group. */
    var LinearDamping(never,default):Single;
    /** Sets on all bodies in this group. */
    var AngularDamping(never,default):Single;
    /** Returns all physics bodies that belong to this physics group. */
    var Bodies(default,never):system.collections.generic.IEnumerable<sandbox.PhysicsBody>;
    /** Returns amount of physics bodies that belong to this physics group. */
    var BodyCount(default,never):Int;
    /** Any and all joints that are attached to any body in this group. */
    var Joints(default,never):system.collections.generic.IEnumerable<sandbox.physics.PhysicsJoint>;
    /** Adds given amount of angular velocity to all physics bodies in this group. */
    function AddAngularVelocity(vel:Vector3):Void;
    /** Adds given amount of velocity () to all physics bodies in this group. */
    function AddVelocity(vel:Vector3):Void;
    /** Adds given amount of angular linear impulse () to all physics bodies in this group. */
    function ApplyAngularImpulse(vel:Vector3, withMass:Bool):Void;
    /** Adds given amount of linear impulse () to all physics bodies in this group. */
    function ApplyImpulse(vel:Vector3, withMass:Bool):Void;
    /** Gets a at given index within this physics group. See . */
    overload function GetBody(groupIndex:Int):sandbox.PhysicsBody;
    overload function GetBody(groupName:String):sandbox.PhysicsBody;
    /** Calls on all bodies of this group. */
    function RebuildMass():Void;
    /** Delete this group, and all of its bodies */
    function Remove():Void;
    /** Sets the physical properties of each PhysicsShape of this group. */
    function SetSurface(name:String):Void;
}
