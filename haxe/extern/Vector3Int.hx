package;

@:native("Vector3Int")
final extern class Vector3Int {
    /** Initializes an integer vector with all components set to the same value. */
    overload function new(all:Int):Void;
    /** Initializes an integer vector with given components. */
    overload function new(x:Int, y:Int, z:Int):Void;
    /** Initializes an integer vector with given components from another integer vector */
    overload function new(vector3Int:Vector3Int):Void;
    /** Returns a unit version of this vector. Keep in mind this returns a Vector3 and not a Vector3Int. */
    var Normal(default,never):Vector3;
    /** The Euler angles of this direction vector. */
    var EulerAngles(default,set):Angles;

    private inline function set_EulerAngles(value:Angles):Angles {
        var __value:Angles = cast value;
        return untyped __cs__("{0}.EulerAngles = {1}", this, __value);
    }

    /** Returns the inverse of this vector, which is useful for scaling vectors. Keep in mind this returns a Vector3 and not a Vector3Int. */
    var Inverse(default,never):Vector3;
    var Item(default,set):Int;

    private inline function set_Item(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    /** Length (or magnitude) of the integer vector (Distance from 0,0,0) */
    var Length(default,never):Single;
    /** Squared length of the integer vector. This is faster than Length, and can be used for things like comparing distances, as long as only squared values are used. */
    var LengthSquared(default,never):Int;
    /** Whether the length of this vector is zero or not. */
    var IsZeroLength(default,never):Bool;
    var x(default,set):Int;

    private inline function set_x(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.x = {1}", this, __value);
    }

    var y(default,set):Int;

    private inline function set_y(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.y = {1}", this, __value);
    }

    var z(default,set):Int;

    private inline function set_z(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.z = {1}", this, __value);
    }

    static var One(default,never):Vector3Int;
    static var Zero(default,never):Vector3Int;
    static var Forward(default,never):Vector3Int;
    static var Backward(default,never):Vector3Int;
    static var Up(default,never):Vector3Int;
    static var Down(default,never):Vector3Int;
    static var Right(default,never):Vector3Int;
    static var Left(default,never):Vector3Int;
    static var OneX(default,never):Vector3Int;
    static var OneY(default,never):Vector3Int;
    static var OneZ(default,never):Vector3Int;
    /** Returns a new integer vector with all values positive. -5 becomes 5, ect. */
    function Abs():Vector3Int;
    /** Returns an integer vector that has the maximum values on each axis between this vector and a given vector. */
    function ComponentMax(other:Vector3Int):Vector3Int;
    /** Returns an integer vector that has the minimum values on each axis between this vector and a given vector. */
    function ComponentMin(other:Vector3Int):Vector3Int;
    static function Cross(a:Vector3Int, b:Vector3Int):Vector3Int;
    /** Returns distance between this vector and another. */
    overload function Distance(other:Vector3):Single;
    overload function Distance(other:Vector3Int):Single;
    overload function Dot(b:Vector3):Single;
    overload function Dot(b:Vector3Int):Single;
    static overload function Dot(a:Vector3Int, b:Vector3):Single;
    static overload function Dot(a:Vector3Int, b:Vector3Int):Single;
    overload function Equals(o:Vector3Int):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    static function GetAngle(v1:Vector3Int, v2:Vector3Int):Single;
    function GetHashCode():Int;
    /** Returns true if value on every axis is less than or equal to tolerance. */
    function IsNearlyZero(tolerance:Int):Bool;
    /** Returns an integer vector that has the maximum values on each axis between 2 given vectors. */
    static function Max(a:Vector3Int, b:Vector3Int):Vector3Int;
    /** Returns an integer vector that has the minimum values on each axis between 2 given vectors. */
    static function Min(a:Vector3Int, b:Vector3Int):Vector3Int;
    /** Given a string, try to convert this into a Vector3Int. Example formatting is "x,y,z", "[x,y,z]", "x y z", etc. */
    static overload function Parse(str:String):Vector3Int;
    static overload function Parse(str:String, provider:system.IFormatProvider):Vector3Int;
    function Read(reader:system.io.BinaryReader):Vector3Int;
    /** Snap to grid along any of the 3 axes. */
    function SnapToGrid(gridSize:Int, sx:Bool, sy:Bool, sz:Bool):Vector3Int;
    /** Formats the integer vector into a string "x,y,z" */
    function ToString():String;
    static function TryParse(str:String, info:system.IFormatProvider, result:Vector3Int):Bool;
    /** Returns this integer vector with given X component. */
    function WithX(x:Int):Vector3Int;
    /** Returns this integer vector with given Y component. */
    function WithY(y:Int):Vector3Int;
    /** Returns this integer vector with given Z component. */
    function WithZ(z:Int):Vector3Int;
    function Write(writer:system.io.BinaryWriter):Void;
}
