package;

/** A capsule object, defined by 2 points and a radius. A capsule is a cylinder with round ends (inset half spheres on each end). */
@:native("Capsule")
final extern class Capsule {
    function new(a:Vector3, b:Vector3, r:Single):Void;
    /** Returns a random point within this capsule. */
    var RandomPointInside(default,never):Vector3;
    /** Returns a random point on the edge of this capsule. */
    var RandomPointOnEdge(default,never):Vector3;
    /** Gets the volume of the capsule in cubic units. */
    var Volume(default,never):Single;
    /** Gets the Bounding Box of the capsule. */
    var Bounds(default,never):BBox;
    var CenterA(default,set):Vector3;

    private inline function set_CenterA(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.CenterA = {1}", this, __value);
    }

    var CenterB(default,set):Vector3;

    private inline function set_CenterB(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.CenterB = {1}", this, __value);
    }

    var Radius(default,set):Single;

    private inline function set_Radius(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Radius = {1}", this, __value);
    }

    /** Determines if the capsule contains the specified point. */
    function Contains(point:Vector3):Bool;
    overload function Equals(o:Capsule):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    /** Creates a capsule where Point A is radius units above the ground and Point B is height minus radius units above the ground. */
    static function FromHeightAndRadius(height:Single, radius:Single):Capsule;
    /** Calculates the distance from a given point to the edge of the capsule. */
    function GetEdgeDistance(localPos:Vector3):Single;
    function GetHashCode():Int;
}
