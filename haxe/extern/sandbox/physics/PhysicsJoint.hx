package sandbox.physics;

/** A physics constraint. */
@:native("Sandbox.Physics.PhysicsJoint")
extern class PhysicsJoint {
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
    /** Creates a ball socket constraint. */
    static overload function CreateBallSocket(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint):sandbox.physics.BallSocketJoint;
    static overload function CreateBallSocket(body1:sandbox.PhysicsBody, body2:sandbox.PhysicsBody, origin:Vector3):sandbox.physics.BallSocketJoint;
    static function CreateControl(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint):sandbox.physics.ControlJoint;
    /** Creates an almost solid constraint between two physics bodies. */
    static function CreateFixed(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint):sandbox.physics.FixedJoint;
    static overload function CreateHinge(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint):sandbox.physics.HingeJoint;
    static overload function CreateHinge(body1:sandbox.PhysicsBody, body2:sandbox.PhysicsBody, localFrame1:Transform, localFrame2:Transform):sandbox.physics.HingeJoint;
    static overload function CreateHinge(body1:sandbox.PhysicsBody, body2:sandbox.PhysicsBody, center:Vector3, axis:Vector3):sandbox.physics.HingeJoint;
    /** Creates a constraint like a rope, where it has no minimum length but its max length is restrained. */
    static function CreateLength(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint, maxLength:Single):sandbox.physics.SpringJoint;
    static function CreatePulley(body1:sandbox.PhysicsBody, body2:sandbox.PhysicsBody, anchor1:Vector3, ground1:Vector3, anchor2:Vector3, ground2:Vector3):sandbox.physics.PulleyJoint;
    /** Creates a slider constraint between two physics bodies via s. */
    static overload function CreateSlider(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint, minLength:Single, maxLength:Single):sandbox.physics.SliderJoint;
    static overload function CreateSlider(body1:sandbox.PhysicsBody, body2:sandbox.PhysicsBody, origin1:Vector3, origin2:Vector3, axis:Vector3, minLength:Single, maxLength:Single):sandbox.physics.SliderJoint;
    /** Creates a constraint that will try to stay the same length, like a spring, or a rod. */
    static function CreateSpring(a:sandbox.physics.PhysicsPoint, b:sandbox.physics.PhysicsPoint, minLength:Single, maxLength:Single):sandbox.physics.SpringJoint;
    function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Removes this joint. */
    function Remove():Void;
}
