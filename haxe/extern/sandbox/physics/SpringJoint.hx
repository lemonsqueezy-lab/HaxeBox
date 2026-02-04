package sandbox.physics;

/** A rope-like constraint that is has springy/bouncy. */
@:native("Sandbox.Physics.SpringJoint")
extern class SpringJoint {
    /** How springy and tight the joint will be */
    var SpringLinear(default,default):sandbox.physics.PhysicsSpring;
    /** Maximum length it should be allowed to go */
    var MaxLength(default,default):Single;
    /** Minimum length it should be allowed to go. At which point it acts a bit like a rod. */
    var MinLength(default,default):Single;
    /** Maximum force it should be allowed to go. Set to zero to only allow stretching. */
    var MaxForce(default,default):Single;
    /** Minimum force it should be allowed to go. */
    var MinForce(default,default):Single;
    var ReferenceMass(default,default):Single;
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
