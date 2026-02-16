package sandbox;

/** Provides ability to generate a fixed joint for a at runtime. */
@:native("Sandbox.FixedJointBuilder")
final extern class FixedJointBuilder extends sandbox.PhysicsJointBuilder {
    /** The frequency of the joint's linear spring in hertz. Higher values make the joint stiffer in translation. */
    var LinearFrequency(default,default):Single;
    /** The damping ratio for the joint's linear spring. Higher values reduce oscillation in translation. */
    var LinearDamping(default,default):Single;
    /** The frequency of the joint's angular spring in hertz. Higher values make the joint stiffer in rotation. */
    var AngularFrequency(default,default):Single;
    /** The damping ratio for the joint's angular spring. Higher values reduce oscillation in rotation. */
    var AngularDamping(default,default):Single;
    function WithAngularDamping(v:Single):sandbox.FixedJointBuilder;
    function WithAngularFrequency(v:Single):sandbox.FixedJointBuilder;
    function WithLinearDamping(v:Single):sandbox.FixedJointBuilder;
    function WithLinearFrequency(v:Single):sandbox.FixedJointBuilder;
}
