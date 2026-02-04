package;

/** A struct describing an origin and direction */
@:native("Ray")
final extern class Ray {
    function new(origin:Vector3, direction:Vector3):Void;
    /** Origin of the ray. */
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    /** Direction of the ray. */
    var Forward(default,set):Vector3;

    private inline function set_Forward(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Forward = {1}", this, __value);
    }

    overload function Equals(o:Ray):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Returns a point on the ray at given distance. */
    function Project(distance:Single):Vector3;
    function ToLocal(tx:Transform):Ray;
    function ToWorld(tx:Transform):Ray;
}
