package sandbox;

/** Provides ability to generate a physics joint for a at runtime. */
@:native("Sandbox.PhysicsJointBuilder")
extern class PhysicsJointBuilder {
    /** The index of the first body connected by the joint. */
    var Body1(default,default):Int;
    /** The index of the second body connected by the joint. */
    var Body2(default,default):Int;
    /** The joint frame in the local space of . */
    var Frame1(default,default):Transform;
    /** The joint frame in the local space of . */
    var Frame2(default,default):Transform;
    /** Whether the connected bodies can collide with each other. */
    var EnableCollision(default,default):Bool;
    /** The maximum linear force the joint can withstand before breaking. */
    var LinearStrength(default,default):Single;
    /** The maximum angular force/torque the joint can withstand before breaking. */
    var AngularStrength(default,default):Single;
}
