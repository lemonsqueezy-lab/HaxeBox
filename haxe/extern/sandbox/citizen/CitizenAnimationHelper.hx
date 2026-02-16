package sandbox.citizen;

@:native("Sandbox.Citizen.CitizenAnimationHelper")
final extern class CitizenAnimationHelper extends sandbox.Component {
    function new():Void;
    var Target(default,default):sandbox.SkinnedModelRenderer;
    var EyeSource(default,default):sandbox.GameObject;
    var Height(default,default):Null<Single>;
    var LookAtEnabled(default,default):Bool;
    var LookAt(default,default):sandbox.GameObject;
    var EyesWeight(default,default):Single;
    var HeadWeight(default,default):Single;
    var BodyWeight(default,default):Single;
    var IkLeftHand(default,default):sandbox.GameObject;
    var IkRightHand(default,default):sandbox.GameObject;
    var IkLeftFoot(default,default):sandbox.GameObject;
    var IkRightFoot(default,default):sandbox.GameObject;
    var EyeWorldTransform(default,never):Transform;
    var AimAngle(never,default):Rotation;
    var AimEyesWeight(default,default):Single;
    var AimHeadWeight(default,default):Single;
    var AimBodyWeight(default,default):Single;
    var MoveRotationSpeed(default,default):Single;
    var FootShuffle(default,default):Single;
    var DuckLevel(default,default):Single;
    var VoiceLevel(default,default):Single;
    var IsSitting(default,default):Bool;
    var IsGrounded(default,default):Bool;
    var IsSwimming(default,default):Bool;
    var IsClimbing(default,default):Bool;
    var IsNoclipping(default,default):Bool;
    var IsWeaponLowered(default,default):Bool;
    var HoldType(default,default):sandbox.citizen.citizenanimationhelper.HoldTypes;
    var Handedness(default,default):sandbox.citizen.citizenanimationhelper.Hand;
    var MoveStyle(default,default):sandbox.citizen.citizenanimationhelper.MoveStyles;
    var SpecialMove(default,default):sandbox.citizen.citizenanimationhelper.SpecialMoveStyle;
    var Sitting(default,default):sandbox.citizen.citizenanimationhelper.SittingStyle;
    var SittingOffsetHeight(default,default):Single;
    var SittingPose(default,default):Single;
    @:protected function OnUpdate():Void;
    function ProceduralHitReaction(info:sandbox.DamageInfo, damageScale:Single, force:Vector3):Void;
    function TriggerDeploy():Void;
    function TriggerJump():Void;
    function WithLook(lookDirection:Vector3, eyesWeight:Single, headWeight:Single, bodyWeight:Single):Void;
    function WithVelocity(Velocity:Vector3):Void;
    function WithWishVelocity(Velocity:Vector3):Void;
}
