package sandbox.vr;

/** Represents a VR controller, along with its transform, velocity, and inputs. */
@:native("Sandbox.VR.VRController")
final extern class VRController {
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Transform(default,never):Transform;
    /** Is this controller currently being represented using full hand tracking? */
    var IsHandTracked(default,never):Bool;
    /** The trigger input on this controller */
    var Trigger(default,never):sandbox.vr.AnalogInput;
    /** The grip input on this controller */
    var Grip(default,never):sandbox.vr.AnalogInput;
    /** The primary joystick input on this controller */
    var Joystick(default,never):sandbox.vr.AnalogInput2D;
    /** The primary joystick press on this controller */
    var JoystickPress(default,never):sandbox.vr.DigitalInput;
    /** The primary button on this controller (Usually A, can be X for Oculus Touch) */
    var ButtonA(default,never):sandbox.vr.DigitalInput;
    /** The secondary button on this controller (Usually B, can be Y for Oculus Touch) */
    var ButtonB(default,never):sandbox.vr.DigitalInput;
    /** Whether or not this object is currently accessible (if false, then the transform will not update). */
    var Active(default,never):Bool;
    /** Local velocity of this object. */
    var Velocity(default,never):Vector3;
    /** Local angular velocity of this object (degrees/s) */
    var AngularVelocity(default,never):Angles;
    /** Which part of the body this tracked object represents - waist, left shoulder, etc. */
    var Role(default,never):sandbox.vr.TrackedDeviceRole;
    /** What type of object this is - tracker, controller, etc. */
    var Type(default,never):sandbox.vr.TrackedDeviceType;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.vr.TrackedObject):Bool;
    overload function Equals(other:sandbox.vr.VRController):Bool;
    /** Get the skeletal value (from 0 to 1) of a specified finger curl index. */
    function GetFingerCurl(index:Int):Single;
    /** Get the skeletal value (from 0 to 1) of a specified finger splay index. */
    function GetFingerSplay(index:Int):Single;
    /** Get the skeletal value (from 0 to 1) of a specified - includes curl and splay. */
    function GetFingerValue(value:sandbox.vr.FingerValue):Single;
    function GetHashCode():Int;
    function GetJointData():system.collections.generic.List<sandbox.vr.VRHandJointData>;
    /** Returns joint data for a specific motion range. */
    function GetJoints(motionRange:sandbox.vr.MotionRange):Array<sandbox.vr.VRHandJointData>;
    /** Retrieves or creates a cached model that can be used to render this controller. */
    function GetModel():sandbox.Model;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    /** Stops all rumble and haptic events on this controller. */
    function StopAllHaptics():Void;
    /** Stop all vibration events on this controller. */
    function StopAllVibrations():Void;
    function ToString():String;
    /** Triggers a haptic vibration event on the controller for this hand. */
    function TriggerHapticVibration(duration:Single, frequency:Single, amplitude:Single):Void;
    /** Trigger a vibration based on a predefined . All s are normalized (start at 0, peak at 1). */
    function TriggerHaptics(effect:sandbox.HapticEffect, lengthScale:Single, frequencyScale:Single, amplitudeScale:Single):Void;
}
