package sandbox.vr;

@:native("Sandbox.VR.TrackedDeviceRole")
extern enum abstract TrackedDeviceRole(Int) {
    var Unknown;
    var LeftHand;
    var RightHand;
    var Head;
    var Gamepad;
    var Treadmill;
    var Stylus;
    var LeftFoot;
    var RightFoot;
    var LeftShoulder;
    var RightShoulder;
    var LeftElbow;
    var RightElbow;
    var LeftKnee;
    var RightKnee;
    var LeftWrist;
    var RightWrist;
    var LeftAnkle;
    var RightAnkle;
    var Waist;
    var Chest;
    var Camera;
    var Keyboard;
}
