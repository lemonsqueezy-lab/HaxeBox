package sandbox.physics;

/** A ballsocket constraint. */
@:native("Sandbox.Physics.BallSocketJoint")
extern class BallSocketJoint extends sandbox.physics.PhysicsJoint {
    /** Constraint friction. */
    var Friction(never,default):Single;
    /** Maximum angle it should be allowed to swing to */
    var SwingLimit(default,default):Vector2;
    var SwingLimitEnabled(default,default):Bool;
    var TwistLimit(default,default):Vector2;
    var TwistLimitEnabled(default,default):Bool;
}
