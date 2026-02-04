package sandbox;

/** Represents a plane. */
@:native("Sandbox.Plane")
final extern class Plane {
    overload function new(normal:Vector3, dist:Single):Void;
    overload function new(origin:Vector3, normal:Vector3):Void;
    overload function new(origin:Vector3, posA:Vector3, posB:Vector3):Void;
    /** Origin position of the plane, basically a vector away from world origin in the direction given by . */
    var Origin(default,never):Vector3;
    /** Origin position of the plane, basically a vector away from world origin in the direction given by . */
    var Position(default,never):Vector3;
    var Normal(default,set):Vector3;

    private inline function set_Normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Normal = {1}", this, __value);
    }

    var Distance(default,set):Single;

    private inline function set_Distance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Distance = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.Plane):Bool;
    function GetDistance(point:Vector3):Single;
    function GetHashCode():Int;
    static function GetIntersection(vp1:sandbox.Plane, vp2:sandbox.Plane, vp3:sandbox.Plane):Null<Vector3>;
    /** Gets the intersecting point of a line segment. */
    overload function IntersectLine(line:Line):Null<Vector3>;
    overload function IntersectLine(start:Vector3, end:Vector3):Null<Vector3>;
    /** Returns true if given point is on the side of the plane where its normal is pointing. */
    overload function IsInFront(point:Vector3):Bool;
    overload function IsInFront(box:BBox, partially:Bool):Bool;
    /** Reflects a direction across the plane. */
    function ReflectDirection(direction:Vector3):Vector3;
    /** Reflects a point across the plane. */
    function ReflectPoint(point:Vector3):Vector3;
    function SnapToPlane(point:Vector3):Vector3;
    function Trace(ray:Ray, twosided:Bool, maxDistance:Float):Null<Vector3>;
    function TryTrace(ray:Ray, hitPoint:Vector3, twosided:Bool, maxDistance:Float):Bool;
}
