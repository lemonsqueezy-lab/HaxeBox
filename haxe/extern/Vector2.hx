package;

/** A 2-dimensional vector. Typically represents a position, size, or direction in 2D space. */
@:native("Vector2")
final extern class Vector2 {
    /** Initializes the 2D vector with all components set to the given value. */
    overload function new(all:Single):Void;
    /** Initializes a 2D vector with given components. */
    overload function new(x:Single, y:Single):Void;
    overload function new(other:Vector2):Void;
    /** Initializes the 2D vector with components from given 3D Vector, discarding the Z component. */
    overload function new(v:Vector3):Void;
    /** Initializes the 2D vector with components from given 4D vector, discarding the Z and W components. */
    overload function new(v:Vector4):Void;
    overload function new(v:system.numerics.Vector2):Void;
    /** X component of this vector. */
    var x(default,set):Single;

    private inline function set_x(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.x = {1}", this, __value);
    }

    /** Y component of this vector. */
    var y(default,set):Single;

    private inline function set_y(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.y = {1}", this, __value);
    }

    /** Returns a 2D vector with every component set to 1 */
    static var One(default,never):Vector2;
    /** Returns a 2D vector with every component set to 0 */
    static var Zero(default,never):Vector2;
    /** Returns a 2D vector with Y set to -1. This typically represents up in 2D space. */
    static var Up(default,never):Vector2;
    /** Returns a 2D vector with Y set to 1. This typically represents down in 2D space. */
    static var Down(default,never):Vector2;
    /** Returns a 2D vector with X set to -1. This typically represents the left hand direction in 2D space. */
    static var Left(default,never):Vector2;
    /** Returns a 2D vector with X set to 1. This typically represents the right hand direction in 2D space. */
    static var Right(default,never):Vector2;
    /** Uniformly samples a 2D position from all points with distance at most 1 from the origin. */
    static var Random(default,never):Vector2;
    /** Return the same vector but with a length of one */
    var Normal(default,never):Vector2;
    /** Returns the magnitude of the vector */
    var Length(default,never):Single;
    /** This is faster than Length, so is better to use in certain circumstances */
    var LengthSquared(default,never):Single;
    /** Returns the inverse of this vector, which is useful for scaling vectors */
    var Inverse(default,never):Vector2;
    /** Return the angle of this vector in degrees, always between 0 and 360 */
    var Degrees(default,never):Single;
    /** Returns a vector that runs perpendicular to this one */
    var Perpendicular(default,never):Vector2;
    /** Returns true if x, y, or z are NaN */
    var IsNaN(default,never):Bool;
    /** Returns true if x, y, or z are infinity */
    var IsInfinity(default,never):Bool;
    /** Returns true if the squared length is less than 1e-8 (which is really near zero) */
    var IsNearZeroLength(default,never):Bool;
    var Item(default,set):Single;

    private inline function set_Item(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    /** Returns a new vector with all values positive. -5 becomes 5, etc. */
    overload function Abs():Vector2;
    static overload function Abs(value:Vector2):Vector2;
    function AddClamped(toAdd:Vector2, maxLength:Single):Vector2;
    /** Returns true if we're nearly equal to the passed vector. */
    function AlmostEqual(v:Vector2, delta:Single):Bool;
    function Angle(other:Vector2):Single;
    /** Returns a new vector whos length is closer to given target length by given amount. */
    function Approach(length:Single, amount:Single):Vector2;
    /** Returns a vector each axis of which is clamped to given min and max values. */
    overload function Clamp(min:Single, max:Single):Vector2;
    overload function Clamp(otherMin:Vector2, otherMax:Vector2):Vector2;
    static overload function Clamp(value:Vector2, min:Vector2, max:Vector2):Vector2;
    /** Returns a vector whose length is limited to given maximum */
    overload function ClampLength(maxLength:Single):Vector2;
    overload function ClampLength(minLength:Single, maxLength:Single):Vector2;
    /** Returns a vector that has the maximum values on each axis between this vector and given vector. */
    function ComponentMax(other:Vector2):Vector2;
    /** Returns a vector that has the minimum values on each axis between this vector and given vector. */
    function ComponentMin(other:Vector2):Vector2;
    static function CubicBezier(source:Vector2, target:Vector2, sourceTangent:Vector2, targetTangent:Vector2, t:Single):Vector2;
    static function Direction(from:Vector2, to:Vector2):Vector2;
    /** Returns distance between this and given vectors. */
    overload function Distance(target:Vector2):Single;
    static overload function Distance(a:Vector2, b:Vector2):Single;
    /** Returns distance between the 2 given vectors. */
    static function DistanceBetween(a:Vector2, b:Vector2):Single;
    /** Returns squared distance between the 2 given vectors. This is faster than DistanceBetween, and can be used for things like comparing distances, as long as only squared values are used. */
    static function DistanceBetweenSquared(a:Vector2, b:Vector2):Single;
    /** Returns squared distance between the 2 given vectors. This is faster than Distance, and can be used for things like comparing distances, as long as only squared values are used. */
    overload function DistanceSquared(target:Vector2):Single;
    static overload function DistanceSquared(a:Vector2, b:Vector2):Single;
    /** Returns the scalar/dot product between the 2 given vectors. */
    overload function Dot(b:Vector2):Single;
    static overload function Dot(a:Vector2, b:Vector2):Single;
    overload function Equals(o:Vector2):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    /** Returns a point on a circle at given rotation from X axis, counter clockwise. */
    static function FromDegrees(degrees:Single):Vector2;
    /** Returns a point on a circle at given rotation from X axis, counter clockwise. */
    static function FromRadians(radians:Single):Vector2;
    static function GetAngle(v1:Vector2, v2:Vector2):Single;
    function GetHashCode():Int;
    /** Returns true if value on every axis is less than tolerance away from zero */
    function IsNearlyZero(tolerance:Single):Bool;
    /** Linearly interpolate from point a to point b. */
    static overload function Lerp(a:Vector2, b:Vector2, frac:Single, clamp:Bool):Vector2;
    static overload function Lerp(a:Vector2, b:Vector2, t:Vector2, clamp:Bool):Vector2;
    /** Linearly interpolate from this vector to given vector. */
    overload function LerpTo(target:Vector2, t:Single, clamp:Bool):Vector2;
    overload function LerpTo(target:Vector2, t:Vector2, clamp:Bool):Vector2;
    /** Returns a vector that has the maximum values on each axis between the 2 given vectors. */
    static function Max(a:Vector2, b:Vector2):Vector2;
    /** Returns a vector that has the minimum values on each axis between the 2 given vectors. */
    static function Min(a:Vector2, b:Vector2):Vector2;
    /** Given a string, try to convert this into a Vector2. Example formatting is "x,y", "[x,y]", "x y", etc. */
    static overload function Parse(str:String):Vector2;
    static overload function Parse(str:String, provider:system.IFormatProvider):Vector2;
    static function Reflect(direction:Vector2, normal:Vector2):Vector2;
    function RotateAround(center:Vector2, angleDegrees:Single):Vector2;
    static function SmoothDamp(current:Vector2, target:Vector2, velocity:Vector2, smoothTime:Single, deltaTime:Single):Vector2;
    /** Snap to grid along all 3 axes. */
    function SnapToGrid(gridSize:Single, sx:Bool, sy:Bool):Vector2;
    static function Sort(min:Vector2, max:Vector2):Void;
    static overload function SpringDamp(current:Vector2, target:Vector2, velocity:Vector2, deltaTime:Single, frequency:Single, damping:Single):Vector2;
    static overload function SpringDamp(current:Vector2, target:Vector2, velocity:Vector2, smoothTime:Single, deltaTime:Single, frequency:Single, damping:Single):Vector2;
    function SubtractDirection(direction:Vector2, strength:Single):Vector2;
    /** Formats the vector into a string "x,y" */
    function ToString():String;
    static overload function TryParse(str:String, result:Vector2):Bool;
    static overload function TryParse(str:String, provider:system.IFormatProvider, result:Vector2):Bool;
    /** Move to the target vector, by amount acceleration */
    function WithAcceleration(target:Vector2, accelerate:Single):Vector2;
    function WithFriction(frictionAmount:Single, stopSpeed:Single):Vector2;
    /** Return this vector with given X. */
    function WithX(x:Single):Vector2;
    /** Return this vector with given Y. */
    function WithY(y:Single):Vector2;
}
