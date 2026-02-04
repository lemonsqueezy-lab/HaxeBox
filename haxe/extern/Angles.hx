package;

/** Euler angles. Unlike a Rotation, Euler angles can represent multiple revolutions (rotations) around an axis, but suffer from issues like gimbal lock and lack of a defined "up" vector. Use Rotation for most cases. */
@:native("Angles")
final extern class Angles {
    /** Copies values of given angles object. */
    overload function new(other:Angles):Void;
    /** Initializes the angles object with all components set to given value. */
    overload function new(all:Single):Void;
    /** Initializes the angles object with given components. */
    overload function new(pitch:Single, yaw:Single, roll:Single):Void;
    /** Where x, y and z represent the pitch, yaw and roll respectively. */
    overload function new(vector:Vector3):Void;
    /** Returns the angles of a uniformly random rotation. */
    static var Random(default,never):Angles;
    /** Returns normalized version of this object, meaning the angle on each axis is normalized to range of (-180,180]. */
    var Normal(default,never):Angles;
    /** The forward direction vector for this angle. */
    var Forward(default,set):Vector3;

    private inline function set_Forward(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Forward = {1}", this, __value);
    }

    var pitch(default,set):Single;

    private inline function set_pitch(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.pitch = {1}", this, __value);
    }

    var yaw(default,set):Single;

    private inline function set_yaw(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.yaw = {1}", this, __value);
    }

    var roll(default,set):Single;

    private inline function set_roll(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.roll = {1}", this, __value);
    }

    static var Zero(default,never):Angles;
    /** Converts an angle to a forward vector. */
    static function AngleVector(ang:Angles):Vector3;
    /** Return as a Vector3, where x = pitch etc */
    function AsVector3():Vector3;
    /** Clamps the angle to range of [0, 360) */
    static function ClampAngle(v:Single):Single;
    /** Returns clamped version of this object, meaning the angle on each axis is transformed to range of [0,360). */
    function Clamped():Angles;
    overload function Equals(o:Angles):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Returns true if this angles object's components are all nearly zero with given tolerance. */
    function IsNearlyZero(tolerance:Float):Bool;
    static function Lerp(source:Angles, target:Angles, frac:Single):Angles;
    /** Performs linear interpolation on the two given angle objects. */
    function LerpTo(target:Angles, frac:Single):Angles;
    /** Normalizes the angle to range of (-180, 180] */
    static function NormalizeAngle(v:Single):Single;
    /** Given a string, try to convert this into an angles object. The format is "p,y,r". */
    static overload function Parse(str:String):Angles;
    static overload function Parse(str:String, provider:system.IFormatProvider):Angles;
    /** Snap to grid */
    function SnapToGrid(gridSize:Single, sx:Bool, sy:Bool, sz:Bool):Angles;
    /** Converts these Euler angles to a rotation. The angles will be normalized. */
    function ToRotation():Rotation;
    function ToString():String;
    static overload function TryParse(str:String, result:Angles):Bool;
    static overload function TryParse(str:String, provider:system.IFormatProvider, result:Angles):Bool;
    /** Returns this angles object with given pitch component. */
    function WithPitch(pitch:Single):Angles;
    /** Returns this angles object with given roll component. */
    function WithRoll(roll:Single):Angles;
    /** Returns this angles object with given yaw component. */
    function WithYaw(yaw:Single):Angles;
}
