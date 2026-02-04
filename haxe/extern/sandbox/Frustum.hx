package sandbox;

/** Represents a frustum. */
@:native("Sandbox.Frustum")
final extern class Frustum {
    /** Creates a frustum from 6 planes. */
    function new(right:sandbox.Plane, left:sandbox.Plane, top:sandbox.Plane, bottom:sandbox.Plane, near:sandbox.Plane, far:sandbox.Plane):Void;
    var RightPlane(default,set):sandbox.Plane;

    private inline function set_RightPlane(value:sandbox.Plane):sandbox.Plane {
        var __value:sandbox.Plane = cast value;
        return untyped __cs__("{0}.RightPlane = {1}", this, __value);
    }

    var LeftPlane(default,set):sandbox.Plane;

    private inline function set_LeftPlane(value:sandbox.Plane):sandbox.Plane {
        var __value:sandbox.Plane = cast value;
        return untyped __cs__("{0}.LeftPlane = {1}", this, __value);
    }

    var TopPlane(default,set):sandbox.Plane;

    private inline function set_TopPlane(value:sandbox.Plane):sandbox.Plane {
        var __value:sandbox.Plane = cast value;
        return untyped __cs__("{0}.TopPlane = {1}", this, __value);
    }

    var BottomPlane(default,set):sandbox.Plane;

    private inline function set_BottomPlane(value:sandbox.Plane):sandbox.Plane {
        var __value:sandbox.Plane = cast value;
        return untyped __cs__("{0}.BottomPlane = {1}", this, __value);
    }

    var NearPlane(default,set):sandbox.Plane;

    private inline function set_NearPlane(value:sandbox.Plane):sandbox.Plane {
        var __value:sandbox.Plane = cast value;
        return untyped __cs__("{0}.NearPlane = {1}", this, __value);
    }

    var FarPlane(default,set):sandbox.Plane;

    private inline function set_FarPlane(value:sandbox.Plane):sandbox.Plane {
        var __value:sandbox.Plane = cast value;
        return untyped __cs__("{0}.FarPlane = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.Frustum):Bool;
    static function FromCorners(tl:Ray, tr:Ray, br:Ray, bl:Ray, near:Single, far:Single):sandbox.Frustum;
    /** Returns the AABB of this frustum. */
    function GetBBox():BBox;
    /** Returns the corner point of one of the 8 corners. This may return null if i is > 7 or the frustum is invalid. */
    function GetCorner(i:Int):Null<Vector3>;
    function GetHashCode():Int;
    overload function IsInside(point:Vector3):Bool;
    overload function IsInside(box:BBox, partially:Bool):Bool;
    overload function IsInside(sphere:sandbox.Sphere, partially:Bool):Bool;
    overload function IsInside(center:Vector3, radius:Single, partially:Bool):Bool;
}
