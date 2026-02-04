package sandbox.physics;

/** A ballsocket constraint. */
@:native("Sandbox.Physics.BallSocketJoint")
extern class BallSocketJoint {
    /** Constraint friction. */
    var Friction(never,default):Single;
    /** Maximum angle it should be allowed to swing to */
    var SwingLimit(default,default):Vector2;
    var SwingLimitEnabled(default,default):Bool;
    var TwistLimit(default,default):Vector2;
    var TwistLimitEnabled(default,default):Bool;
    /** The this joint belongs to. */
    var World(default,never):sandbox.PhysicsWorld;
    /** The source physics body this joint is attached to. */
    var Body1(default,never):sandbox.PhysicsBody;
    /** The target physics body this joint is constraining. */
    var Body2(default,never):sandbox.PhysicsBody;
    /** A specific point this joint is attached at on */
    var Point1(default,default):sandbox.physics.PhysicsPoint;
    /** A specific point this joint is attached at on */
    var Point2(default,default):sandbox.physics.PhysicsPoint;
    var IsActive(default,default):Bool;
    /** Enables or disables collisions between the 2 constrained physics bodies. */
    var Collisions(default,default):Bool;
    /** Strength of the linear constraint. If it takes any more energy than this, it'll break. */
    var Strength(default,default):Single;
    /** Strength of the angular constraint. If it takes any more energy than this, it'll break. */
    var AngularStrength(default,default):Single;
}
