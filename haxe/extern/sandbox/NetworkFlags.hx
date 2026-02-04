package sandbox;

/** Describes the behavior of network objects. */
@:native("Sandbox.NetworkFlags")
extern enum abstract NetworkFlags(Int) {
    var None;
    var NoInterpolation;
    var NoPositionSync;
    var NoRotationSync;
    var NoScaleSync;
    var NoTransformSync;
}
