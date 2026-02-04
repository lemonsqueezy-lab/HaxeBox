package;

/** Represents a Quaternion rotation. Can be interpreted as a direction unit vector (x,y,z) + rotation around the direction vector (w) which represents the up direction. Unlike , this cannot store multiple revolutions around an axis. */
@:native("Rotation")
final extern class Rotation {
    /** Initializes this rotation to identity. */
    overload function new():Void;
    /** Initializes the rotation from given components. */
    overload function new(x:Single, y:Single, z:Single, w:Single):Void;
    /** Initializes the rotation from a normal vector + rotation around it. */
    overload function new(v:Vector3, w:Single):Void;
    /** The X component of this rotation. */
    var x(default,set):Single;

    private inline function set_x(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.x = {1}", this, __value);
    }

    /** The Y component of this rotation. */
    var y(default,set):Single;

    private inline function set_y(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.y = {1}", this, __value);
    }

    /** The Z component of this rotation. */
    var z(default,set):Single;

    private inline function set_z(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.z = {1}", this, __value);
    }

    /** The W component of this rotation (rotation around the normal defined by X,Y,Z components). */
    var w(default,set):Single;

    private inline function set_w(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.w = {1}", this, __value);
    }

    /** The forwards direction of this rotation. */
    var Forward(default,never):Vector3;
    /** The backwards direction of this rotation. */
    var Backward(default,never):Vector3;
    /** The right hand direction of this rotation. */
    var Right(default,never):Vector3;
    /** The left hand direction of this rotation. */
    var Left(default,never):Vector3;
    /** The upwards direction of this rotation. */
    var Up(default,never):Vector3;
    /** The downwards direction of this rotation. */
    var Down(default,never):Vector3;
    /** Returns the inverse of this rotation. */
    var Inverse(default,never):Rotation;
    /** Divides each component of the rotation by its length, normalizing the rotation. */
    var Normal(default,never):Rotation;
    /** Returns conjugate of this rotation, meaning the X Y and Z components are negated. */
    var Conjugate(default,never):Rotation;
    /** Returns a uniformly random rotation. */
    static var Random(default,never):Rotation;
    static var Identity(default,never):Rotation;
    function AlmostEqual(r:Rotation, delta:Single):Bool;
    /** Returns the turn length of this rotation (from identity) in degrees */
    function Angle():Single;
    /** Return this Rotation as pitch, yaw, roll angles */
    function Angles():Angles;
    /** Clamp to within degrees of passed rotation */
    overload function Clamp(to:Rotation, degrees:Single):Rotation;
    overload function Clamp(to:Rotation, degrees:Single, change:Single):Rotation;
    /** Will give you the axis most aligned with the given normal */
    function ClosestAxis(normal:Vector3):Vector3;
    /** Returns the difference between two rotations, as a rotation */
    static function Difference(from:Rotation, to:Rotation):Rotation;
    /** The degree angular distance between this rotation and the target */
    function Distance(to:Rotation):Single;
    overload function Equals(o:Rotation):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    /** Create a Rotation (quaternion) from Angles */
    static overload function From(angles:Angles):Rotation;
    static overload function From(pitch:Single, yaw:Single, roll:Single):Rotation;
    /** Create from angle and an axis */
    static function FromAxis(axis:Vector3, degrees:Single):Rotation;
    /** Create a Rotation (quaternion) from pitch (degrees) */
    static function FromPitch(pitch:Single):Rotation;
    /** Create a Rotation (quaternion) from roll (degrees) */
    static function FromRoll(roll:Single):Rotation;
    static function FromToRotation(fromDirection:Vector3, toDirection:Vector3):Rotation;
    /** Create a Rotation (quaternion) from yaw (degrees) */
    static function FromYaw(yaw:Single):Rotation;
    function GetHashCode():Int;
    /** Perform a linear interpolation from a to b by given amount. */
    static function Lerp(a:Rotation, b:Rotation, frac:Single, clamp:Bool):Rotation;
    /** Perform a linear interpolation from this rotation to a target rotation by given amount. */
    function LerpTo(target:Rotation, frac:Single, clamp:Bool):Rotation;
    /** Create a Rotation (quaternion) from a forward vector, using as an up vector. This won't give nice results if is very close to straight up or down, if that can happen you should use . */
    static overload function LookAt(forward:Vector3):Rotation;
    static overload function LookAt(forward:Vector3, up:Vector3):Rotation;
    /** Given a string, try to convert this into a quaternion rotation. The format is "x,y,z,w" */
    static overload function Parse(str:String):Rotation;
    static overload function Parse(str:String, provider:system.IFormatProvider):Rotation;
    /** Return this Rotation pitch */
    function Pitch():Single;
    /** Return this Rotation roll */
    function Roll():Single;
    /** A convenience function that rotates this rotation around a given axis given amount of degrees */
    function RotateAroundAxis(axis:Vector3, degrees:Single):Rotation;
    /** Perform a spherical interpolation from a to b by given amount. */
    static function Slerp(a:Rotation, b:Rotation, amount:Single, clamp:Bool):Rotation;
    /** Perform a spherical interpolation from this rotation to a target rotation by given amount. */
    function SlerpTo(target:Rotation, frac:Single, clamp:Bool):Rotation;
    static function SmoothDamp(current:Rotation, target:Rotation, velocity:Vector3, smoothTime:Single, deltaTime:Single):Rotation;
    function ToString():String;
    static overload function TryParse(str:String, result:Rotation):Bool;
    static overload function TryParse(str:String, provider:system.IFormatProvider, result:Rotation):Bool;
    /** Return this Rotation yaw */
    function Yaw():Single;
}
