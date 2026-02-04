package;

/** A 3-dimentional vector. Typically represents a position, size, or direction in 3D space. */
@:native("Vector3")
final extern class Vector3 {
    /** Initializes the vector with all components set to given value. */
    overload function new(all:Single):Void;
    /** Initializes a vector with given components and Z set to 0. */
    overload function new(x:Single, y:Single):Void;
    /** Initializes a vector with given components. */
    overload function new(x:Single, y:Single, z:Single):Void;
    overload function new(other:Vector2, z:Single):Void;
    overload function new(other:Vector3):Void;
    overload function new(v:system.numerics.Vector3):Void;
    /** The X component of this vector. */
    var x(default,set):Single;

    private inline function set_x(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.x = {1}", this, __value);
    }

    /** The Y component of this vector. */
    var y(default,set):Single;

    private inline function set_y(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.y = {1}", this, __value);
    }

    /** The Z component of this vector. */
    var z(default,set):Single;

    private inline function set_z(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.z = {1}", this, __value);
    }

    /** Uniformly samples a 3D position from all points with distance at most 1 from the origin. */
    static var Random(default,never):Vector3;
    /** Returns a unit version of this vector. A unit vector has length of 1. */
    var Normal(default,never):Vector3;
    /** Length (or magnitude) of the vector (Distance from 0,0,0). */
    var Length(default,never):Single;
    /** Squared length of the vector. This is faster than Length, and can be used for things like comparing distances, as long as only squared values are used. */
    var LengthSquared(default,never):Single;
    /** Returns the inverse of this vector, which is useful for scaling vectors. */
    var Inverse(default,never):Vector3;
    /** Returns true if x, y or z are NaN */
    var IsNaN(default,never):Bool;
    /** Returns true if x, y or z are infinity */
    var IsInfinity(default,never):Bool;
    /** Returns true if the squared length is less than 1e-8 (which is really near zero) */
    var IsNearZeroLength(default,never):Bool;
    /** The Euler angles of this direction vector. */
    var EulerAngles(default,set):Angles;

    private inline function set_EulerAngles(value:Angles):Angles {
        var __value:Angles = cast value;
        return untyped __cs__("{0}.EulerAngles = {1}", this, __value);
    }

    var Item(default,set):Single;

    private inline function set_Item(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    static var One(default,never):Vector3;
    static var Zero(default,never):Vector3;
    static var Forward(default,never):Vector3;
    static var Backward(default,never):Vector3;
    static var Up(default,never):Vector3;
    static var Down(default,never):Vector3;
    static var Right(default,never):Vector3;
    static var Left(default,never):Vector3;
    /** Returns a new vector with all values positive. -5 becomes 5, etc. */
    overload function Abs():Vector3;
    static overload function Abs(value:Vector3):Vector3;
    function AddClamped(toAdd:Vector3, maxLength:Single):Vector3;
    function AlmostEqual(v:Vector3, delta:Single):Bool;
    function Angle(other:Vector3):Single;
    /** Returns a new vector whose length is closer to given target length by given amount. */
    function Approach(length:Single, amount:Single):Vector3;
    static function CatmullRomSpline(p0:Vector3, p1:Vector3, p2:Vector3, p3:Vector3, t:Single):Vector3;
    /** Returns a vector each axis of which is clamped to given min and max values. */
    overload function Clamp(min:Single, max:Single):Vector3;
    overload function Clamp(otherMin:Vector3, otherMax:Vector3):Vector3;
    static overload function Clamp(value:Vector3, min:Vector3, max:Vector3):Vector3;
    /** Returns a vector whose length is limited to given maximum. */
    overload function ClampLength(maxLength:Single):Vector3;
    overload function ClampLength(minLength:Single, maxLength:Single):Vector3;
    function ComponentMax(other:Vector3):Vector3;
    function ComponentMin(other:Vector3):Vector3;
    overload function Cross(b:Vector3):Vector3;
    static overload function Cross(a:Vector3, b:Vector3):Vector3;
    static function CubicBezier(source:Vector3, target:Vector3, sourceTangent:Vector3, targetTangent:Vector3, t:Single):Vector3;
    static function Direction(from:Vector3, to:Vector3):Vector3;
    function Distance(target:Vector3):Single;
    static function DistanceBetween(a:Vector3, b:Vector3):Single;
    static function DistanceBetweenSquared(a:Vector3, b:Vector3):Single;
    function DistanceSquared(target:Vector3):Single;
    overload function Dot(b:Vector3):Single;
    static overload function Dot(a:Vector3, b:Vector3):Single;
    overload function Equals(o:Vector3):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    static function GetAngle(v1:Vector3, v2:Vector3):Single;
    function GetHashCode():Int;
    /** Given a position, and two other positions, calculate the inverse lerp position between those */
    static function InverseLerp(pos:Vector3, a:Vector3, b:Vector3, clamp:Bool):Single;
    /** Returns true if value on every axis is less than tolerance away from zero */
    function IsNearlyZero(tolerance:Single):Bool;
    /** Performs linear interpolation between 2 given vectors. */
    static overload function Lerp(a:Vector3, b:Vector3, frac:Single, clamp:Bool):Vector3;
    static overload function Lerp(a:Vector3, b:Vector3, frac:Vector3, clamp:Bool):Vector3;
    overload function LerpTo(target:Vector3, frac:Single, clamp:Bool):Vector3;
    overload function LerpTo(target:Vector3, frac:Vector3, clamp:Bool):Vector3;
    static function Max(a:Vector3, b:Vector3):Vector3;
    static function Min(a:Vector3, b:Vector3):Vector3;
    static overload function Parse(str:String):Vector3;
    static overload function Parse(str:String, provider:system.IFormatProvider):Vector3;
    function ProjectOnNormal(normal:Vector3):Vector3;
    static function Reflect(direction:Vector3, normal:Vector3):Vector3;
    function RotateAround(center:Vector3, rot:Rotation):Vector3;
    /** Performs spherical linear interpolation (Slerp) between two vectors. */
    static function Slerp(a:Vector3, b:Vector3, frac:Single, clamp:Bool):Vector3;
    function SlerpTo(target:Vector3, frac:Single, clamp:Bool):Vector3;
    static function SmoothDamp(current:Vector3, target:Vector3, velocity:Vector3, smoothTime:Single, deltaTime:Single):Vector3;
    /** Snap to grid along any of the 3 axes. */
    function SnapToGrid(gridSize:Single, sx:Bool, sy:Bool, sz:Bool):Vector3;
    static function Sort(min:Vector3, max:Vector3):Void;
    static overload function SpringDamp(current:Vector3, target:Vector3, velocity:Vector3, deltaTime:Single, frequency:Single, damping:Single):Vector3;
    static overload function SpringDamp(current:Vector3, target:Vector3, velocity:Vector3, smoothTime:Single, deltaTime:Single, frequency:Single, damping:Single):Vector3;
    function SubtractDirection(direction:Vector3, strength:Single):Vector3;
    static function TcbSpline(p0:Vector3, p1:Vector3, p2:Vector3, p3:Vector3, tension:Single, continuity:Single, bias:Single, u:Single):Vector3;
    /** Formats the vector into a string "x,y,z" */
    function ToString():String;
    static overload function TryParse(str:String, result:Vector3):Bool;
    static overload function TryParse(str:String, provider:system.IFormatProvider, result:Vector3):Bool;
    static function VectorAngle(vec:Vector3):Angles;
    static function VectorPlaneProject(v:Vector3, planeNormal:Vector3):Vector3;
    /** Move to the target vector, by amount acceleration */
    function WithAcceleration(target:Vector3, acceleration:Single):Vector3;
    /** Apply an amount of friction to the current velocity. */
    function WithFriction(frictionAmount:Single, stopSpeed:Single):Vector3;
    /** Returns this vector with given X component. */
    function WithX(x:Single):Vector3;
    /** Returns this vector with given Y component. */
    function WithY(y:Single):Vector3;
    /** Returns this vector with given Z component. */
    function WithZ(z:Single):Vector3;
}
