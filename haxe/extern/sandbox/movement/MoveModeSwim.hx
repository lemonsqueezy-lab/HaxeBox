package sandbox.movement;

/** The character is swimming */
@:native("Sandbox.Movement.MoveModeSwim")
extern class MoveModeSwim extends sandbox.movement.MoveMode {
    function new():Void;
    var Priority(default,default):Int;
    var SwimLevel(default,default):Single;
    /** We will update this based on how much you're in a "water" tagged trigger. */
    var WaterLevel(default,never):Single;
    @:protected function OnFixedUpdate():Void;
    function OnModeBegin():Void;
    function OnModeEnd(next:sandbox.movement.MoveMode):Void;
    function Score(controller:sandbox.PlayerController):Int;
    function UpdateMove(eyes:Rotation, input:Vector3):Vector3;
    function UpdateRigidBody(body:sandbox.Rigidbody):Void;
}
