package sandbox.movement;

/** The character is walking */
@:native("Sandbox.Movement.MoveModeWalk")
extern class MoveModeWalk extends sandbox.movement.MoveMode {
    function new():Void;
    var Priority(default,default):Int;
    var GroundAngle(default,default):Single;
    var StepUpHeight(default,default):Single;
    var StepDownHeight(default,default):Single;
    function AddVelocity():Void;
    function IsStandableSurface(result:sandbox.SceneTraceResult):Bool;
    function PostPhysicsStep():Void;
    function PrePhysicsStep():Void;
    function Score(controller:sandbox.PlayerController):Int;
    function UpdateMove(eyes:Rotation, input:Vector3):Vector3;
}
