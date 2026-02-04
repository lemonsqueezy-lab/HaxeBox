package;

/** A 4-dimensional vector/point. */
@:native("Vector4")
final extern class Vector4 {
    /** Initializes the 4D vector with all components set to given value. */
    overload function new(all:Single):Void;
    /** Initializes a vector4 with given components. */
    overload function new(x:Single, y:Single, z:Single, w:Single):Void;
    overload function new(v:Vector3, w:Single):Void;
    overload function new(other:Vector4):Void;
    overload function new(v:system.numerics.Vector4):Void;
    /** The X component of this Vector. */
    var x(default,set):Single;

    private inline function set_x(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.x = {1}", this, __value);
    }

    /** The Y component of this Vector. */
    var y(default,set):Single;

    private inline function set_y(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.y = {1}", this, __value);
    }

    /** The Z component of this Vector. */
    var z(default,set):Single;

    private inline function set_z(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.z = {1}", this, __value);
    }

    /** The W component of this Vector. */
    var w(default,set):Single;

    private inline function set_w(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.w = {1}", this, __value);
    }

    /** The length (or magnitude) of the vector (Distance from 0,0,0). */
    var Length(default,never):Single;
    /** Squared length of the vector. This is faster than , and can be used for things like comparing distances, as long as only squared values are used. */
    var LengthSquared(default,never):Single;
    /** Returns true if x, y, z or w are NaN */
    var IsNaN(default,never):Bool;
    /** Returns true if x, y, z or w are infinity */
    var IsInfinity(default,never):Bool;
    /** Whether length of this vector is nearly zero. */
    var IsNearZeroLength(default,never):Bool;
    var Item(default,set):Single;

    private inline function set_Item(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    static var Zero(default,never):Vector4;
    static var One(default,never):Vector4;
    function AlmostEqual(v:Vector4, delta:Single):Bool;
    /** Returns a vector each axis of which is clamped to given min and max values. */
    overload function Clamp(min:Single, max:Single):Vector4;
    overload function Clamp(otherMin:Vector4, otherMax:Vector4):Vector4;
    static overload function Clamp(value:Vector4, min:Vector4, max:Vector4):Vector4;
    function ComponentMax(other:Vector4):Vector4;
    function ComponentMin(other:Vector4):Vector4;
    function Distance(target:Vector4):Single;
    static function DistanceBetween(a:Vector4, b:Vector4):Single;
    static function DistanceBetweenSquared(a:Vector4, b:Vector4):Single;
    function DistanceSquared(target:Vector4):Single;
    overload function Dot(b:Vector4):Single;
    static overload function Dot(a:Vector4, b:Vector4):Single;
    overload function Equals(o:Vector4):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Returns true if value on every axis is less than tolerance away from zero */
    function IsNearlyZero(tolerance:Single):Bool;
    /** Performs linear interpolation between 2 given vectors. */
    static overload function Lerp(a:Vector4, b:Vector4, frac:Single, clamp:Bool):Vector4;
    static overload function Lerp(a:Vector4, b:Vector4, frac:Vector4, clamp:Bool):Vector4;
    overload function LerpTo(target:Vector4, frac:Single, clamp:Bool):Vector4;
    overload function LerpTo(target:Vector4, frac:Vector4, clamp:Bool):Vector4;
    static function Max(a:Vector4, b:Vector4):Vector4;
    function Min(a:Vector4, b:Vector4):Vector4;
    /** Given a string, try to convert this into a vector4. The format is "x,y,z,w". */
    static overload function Parse(str:String):Vector4;
    static overload function Parse(str:String, provider:system.IFormatProvider):Vector4;
    /** Snap to grid along any of the 4 axes. */
    function SnapToGrid(gridSize:Single, sx:Bool, sy:Bool, sz:Bool, sw:Bool):Vector4;
    static function Sort(min:Vector4, max:Vector4):Void;
    /** Formats the Vector into a string "x,y,z,w" */
    function ToString():String;
    static overload function TryParse(str:String, result:Vector4):Bool;
    static overload function TryParse(str:String, provider:system.IFormatProvider, result:Vector4):Bool;
    /** Returns this vector with given W component. */
    function WithW(w:Single):Vector4;
    /** Returns this vector with given X component. */
    function WithX(x:Single):Vector4;
    /** Returns this vector with given Y component. */
    function WithY(y:Single):Vector4;
    /** Returns this vector with given Z component. */
    function WithZ(z:Single):Vector4;
}
