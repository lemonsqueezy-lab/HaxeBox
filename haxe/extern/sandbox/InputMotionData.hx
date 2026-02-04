package sandbox;

/** Represents the current state of a device's motion sensor(s). */
@:native("Sandbox.InputMotionData")
final extern class InputMotionData {
    var Gyroscope(default,set):Angles;

    private inline function set_Gyroscope(value:Angles):Angles {
        var __value:Angles = cast value;
        return untyped __cs__("{0}.Gyroscope = {1}", this, __value);
    }

    var Accelerometer(default,set):Vector3;

    private inline function set_Accelerometer(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Accelerometer = {1}", this, __value);
    }

}
