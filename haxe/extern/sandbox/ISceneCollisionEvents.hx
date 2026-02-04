package sandbox;

/** Listen to all collision events that happen during a physics step. */
@:native("Sandbox.ISceneCollisionEvents")
extern class ISceneCollisionEvents {
    /** Called when a collider/rigidbody hits another collider, including repeated hits on the same shape while they are already touching. */
    function OnCollisionHit(collision:sandbox.Collision):Void;
    /** Called when a collider/rigidbody starts touching another collider. */
    function OnCollisionStart(collision:sandbox.Collision):Void;
    /** Called when a collider/rigidbody stops touching another collider. */
    function OnCollisionStop(collision:sandbox.CollisionStop):Void;
    /** Called once per physics step for every collider being touched. */
    function OnCollisionUpdate(collision:sandbox.Collision):Void;
}
