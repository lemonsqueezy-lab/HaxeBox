package sandbox.component;

/** A with this interface can react to collisions. */
@:native("Sandbox.Component.ICollisionListener")
extern class ICollisionListener {
    /** Called when this collider/rigidbody starts touching another collider. */
    function OnCollisionStart(collision:sandbox.Collision):Void;
    /** Called when this collider/rigidbody stops touching another collider. */
    function OnCollisionStop(collision:sandbox.CollisionStop):Void;
    /** Called once per physics step for every collider being touched. */
    function OnCollisionUpdate(collision:sandbox.Collision):Void;
}
