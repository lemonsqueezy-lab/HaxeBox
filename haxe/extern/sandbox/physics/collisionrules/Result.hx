package sandbox.physics.collisionrules;

/** Result of a collision between two objects. */
@:native("Sandbox.Physics.CollisionRules.Result")
extern enum abstract Result(Int) {
    var Unset;
    var Collide;
    var Trigger;
    var Ignore;
}
