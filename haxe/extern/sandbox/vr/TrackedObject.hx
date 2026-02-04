package sandbox.vr;

/** Represents a physically tracked VR object with a transform */
@:native("Sandbox.VR.TrackedObject")
extern class TrackedObject {
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    /** Whether or not this object is currently accessible (if false, then the transform will not update). */
    var Active(default,never):Bool;
    /** Local velocity of this object. */
    var Velocity(default,never):Vector3;
    /** Local angular velocity of this object (degrees/s) */
    var AngularVelocity(default,never):Angles;
    /** The position and rotation of this tracked object in world space (based on the anchor position) */
    var Transform(default,never):Transform;
    /** Which part of the body this tracked object represents - waist, left shoulder, etc. */
    var Role(default,never):sandbox.vr.TrackedDeviceRole;
    /** What type of object this is - tracker, controller, etc. */
    var Type(default,never):sandbox.vr.TrackedDeviceType;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.vr.TrackedObject):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
