package sandbox.physics;

/** A hinge-like constraint. */
@:native("Sandbox.Physics.HingeJoint")
extern class HingeJoint {
    /** Maximum angle it should be allowed to go */
    var MaxAngle(default,default):Single;
    /** Minimum angle it should be allowed to go */
    var MinAngle(default,default):Single;
    var Angle(default,never):Single;
    var Axis(default,never):Vector3;
    var Speed(default,never):Single;
    /** Hinge friction. */
    var Friction(never,default):Single;
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
