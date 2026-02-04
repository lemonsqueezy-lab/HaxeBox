package sandbox.citizen.citizenanimationhelper;

@:native("Sandbox.Citizen.CitizenAnimationHelper.SpecialMoveStyle")
extern enum abstract SpecialMoveStyle(Int) {
    var None;
    var LedgeGrab;
    var Roll;
    var Slide;
}
