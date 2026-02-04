package;

@:native("Vector2Int")
final extern class Vector2Int {
    /** Initializes an integer vector with all components set to the same value. */
    overload function new(all:Int):Void;
    /** Initializes an integer vector with given components. */
    overload function new(x:Int, y:Int):Void;
    /** Initializes an integer vector with given components from another integer vector. */
    overload function new(vector2Int:Vector2Int):Void;
    /** Initializes an integer vector with given components from another integer vector, discarding the Z component. */
    overload function new(vector3Int:Vector3Int):Void;
    /** Returns a unit version of this vector. Keep in mind this returns a Vector2 and not a Vector2Int. */
    var Normal(default,never):Vector2;
    /** Return the angle of this vector in degrees, always between 0 and 360. */
    var Degrees(default,never):Single;
    var Item(default,set):Int;

    private inline function set_Item(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    /** Length (or magnitude) of the integer vector (Distance from 0,0) */
    var Length(default,never):Single;
    /** Squared length of the integer vector. This is faster than Length, and can be used for things like comparing distances, as long as only squared values are used."/> */
    var LengthSquared(default,never):Int;
    /** Returns an integer vector that runs perpendicular to this one. */
    var Perpendicular(default,never):Vector2Int;
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

    static var One(default,never):Vector2Int;
    static var Zero(default,never):Vector2Int;
    static var Right(default,never):Vector2Int;
    static var Left(default,never):Vector2Int;
    static var Up(default,never):Vector2Int;
    static var Down(default,never):Vector2Int;
    /** Returns a new integer vector with all values positive. -5 becomes 5, ect. */
    function Abs():Vector2Int;
    /** Returns an integer vector that has the maximum values on each axis of the two input vectors. */
    function ComponentMax(other:Vector2Int):Vector2Int;
    /** Returns an integer vector that has the minimum values on each axis of the two input vectors. */
    function ComponentMin(other:Vector2Int):Vector2Int;
    /** Returns the distance between this vector and another. */
    overload function Distance(other:Vector2):Single;
    overload function Distance(other:Vector2Int):Single;
    overload function Equals(o:Vector2Int):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Returns true if value on every axis is less than or equal to tolerance */
    function IsNearlyZero(tolerance:Int):Bool;
    /** Returns an integer vector that has the maximum values on each axis between 2 given vectors. */
    static function Max(a:Vector2Int, b:Vector2Int):Vector2Int;
    /** Returns an integer vector that has the minimum values on each axis between 2 given vectors. */
    static function Min(a:Vector2Int, b:Vector2Int):Vector2Int;
    /** Given a string, try to convert this into a Vector2Int. Example formatting is "x,y", "[x,y]", "x y", etc. */
    static overload function Parse(str:String):Vector2Int;
    static overload function Parse(str:String, provider:system.IFormatProvider):Vector2Int;
    function Read(reader:system.io.BinaryReader):Vector2Int;
    /** Snap to grid along any of the 2 axes. */
    function SnapToGrid(gridSize:Int, sx:Bool, sy:Bool):Vector2Int;
    /** Formats the integer vector as a string "x,y". */
    function ToString():String;
    static function TryParse(str:String, info:system.IFormatProvider, result:Vector2Int):Bool;
    /** Returns this integer vector with given X component. */
    function WithX(x:Int):Vector2Int;
    /** Returns this integer vector with given Y component. */
    function WithY(y:Int):Vector2Int;
    function Write(writer:system.io.BinaryWriter):Void;
}
