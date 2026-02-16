package sandbox.movement;

/** The character is climbing up a ladder */
@:native("Sandbox.Movement.MoveModeLadder")
extern class MoveModeLadder extends sandbox.movement.MoveMode {
    function new():Void;
    var Priority(default,default):Int;
    var Speed(default,default):Single;
    /** A list of tags we can climb up - when they're on triggers */
    var ClimbableTags(default,default):sandbox.TagSet;
    /** The GameObject we're climbing. This will usually be a ladder trigger. */
    var ClimbingObject(default,default):sandbox.GameObject;
    /** When climbing, this is the rotation of the wall/ladder you're climbing, where Forward is the direction to look at the ladder, and Up is the direction to climb. */
    var ClimbingRotation(default,default):Rotation;
    @:protected function OnFixedUpdate():Void;
    function OnModeBegin():Void;
    function OnModeEnd(next:sandbox.movement.MoveMode):Void;
    @:protected function OnRotateRenderBody(renderer:sandbox.SkinnedModelRenderer):Void;
    function PostPhysicsStep():Void;
    function Score(controller:sandbox.PlayerController):Int;
    function UpdateMove(eyes:Rotation, input:Vector3):Vector3;
    function UpdateRigidBody(body:sandbox.Rigidbody):Void;
}
