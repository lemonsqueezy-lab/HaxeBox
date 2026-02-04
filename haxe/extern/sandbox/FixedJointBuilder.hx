package sandbox;

/** Provides ability to generate a fixed joint for a at runtime. */
@:native("Sandbox.FixedJointBuilder")
final extern class FixedJointBuilder {
    /** The frequency of the joint's linear spring in hertz. Higher values make the joint stiffer in translation. */
    var LinearFrequency(default,default):Single;
    /** The damping ratio for the joint's linear spring. Higher values reduce oscillation in translation. */
    var LinearDamping(default,default):Single;
    /** The frequency of the joint's angular spring in hertz. Higher values make the joint stiffer in rotation. */
    var AngularFrequency(default,default):Single;
    /** The damping ratio for the joint's angular spring. Higher values reduce oscillation in rotation. */
    var AngularDamping(default,default):Single;
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
    function WithAngularDamping(v:Single):sandbox.FixedJointBuilder;
    function WithAngularFrequency(v:Single):sandbox.FixedJointBuilder;
    function WithLinearDamping(v:Single):sandbox.FixedJointBuilder;
    function WithLinearFrequency(v:Single):sandbox.FixedJointBuilder;
}
