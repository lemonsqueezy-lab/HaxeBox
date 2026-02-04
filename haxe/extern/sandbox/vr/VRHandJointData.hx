package sandbox.vr;

@:native("Sandbox.VR.VRHandJointData")
final extern class VRHandJointData {
    var Joint(default,set):sandbox.vr.VRHandJoint;

    private inline function set_Joint(value:sandbox.vr.VRHandJoint):sandbox.vr.VRHandJoint {
        var __value:sandbox.vr.VRHandJoint = cast value;
        return untyped __cs__("{0}.Joint = {1}", this, __value);
    }

    var Transform(default,set):Transform;

    private inline function set_Transform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

}
