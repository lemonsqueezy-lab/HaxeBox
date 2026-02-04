package sandbox;

/** Represents a sphere. */
@:native("Sandbox.Sphere")
final extern class Sphere {
    function new(center:Vector3, radius:Single):Void;
    /** A sphere centered at the origin, with radius 1. */
    static var Unit(default,never):sandbox.Sphere;
    /** Volume of this sphere */
    var Volume(default,never):Single;
    /** Returns a random point within this sphere. */
    var RandomPointInside(default,never):Vector3;
    /** Returns a random point on the edge of this sphere. */
    var RandomPointOnEdge(default,never):Vector3;
    var Center(default,set):Vector3;

    private inline function set_Center(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Center = {1}", this, __value);
    }

    var Radius(default,set):Single;

    private inline function set_Radius(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Radius = {1}", this, __value);
    }

    function Contains(value:Vector3):Bool;
    /** Calculates the shortest distance from the specified local position to the nearest edge of the object. */
    function GetEdgeDistance(localPos:Vector3):Single;
    /** Get the volume of this sphere */
    function GetVolume():Single;
    function ToString():String;
    /** Performs an intersection test between this sphere and given ray. */
    overload function Trace(ray:Ray, maxDistance:Single):Bool;
    overload function Trace(ray:Ray, maxDistance:Single, distance:Single):Bool;
}
