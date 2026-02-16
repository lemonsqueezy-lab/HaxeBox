package sandbox;

/** Provides ability to generate a slider joint for a at runtime. */
@:native("Sandbox.SliderJointBuilder")
final extern class SliderJointBuilder extends sandbox.PhysicsJointBuilder {
    /** Whether the joint enforces a translation limit along its axis. */
    var EnableLimit(default,default):Bool;
    /** The minimum and maximum allowed translation along the joint axis. */
    var Limit(default,default):Vector2;
    function WithLimit(min:Single, max:Single):sandbox.SliderJointBuilder;
}
