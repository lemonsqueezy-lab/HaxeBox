package;

/** Represents a line in 3D space. */
@:native("Line")
final extern class Line {
    overload function new(a:Vector3, b:Vector3):Void;
    overload function new(origin:Vector3, direction:Vector3, length:Single):Void;
    /** Start position of the line. */
    var Start(default,never):Vector3;
    /** End position of the line. */
    var End(default,never):Vector3;
    /** Returns the result of b - a */
    var Delta(default,never):Vector3;
    /** Returns the midpoint between a and b */
    var Center(default,never):Vector3;
    overload function ClosestPoint(pos:Vector3):Vector3;
    overload function ClosestPoint(ray:Ray, point_on_line:Vector3):Bool;
    overload function ClosestPoint(ray:Ray, point_on_line:Vector3, point_on_ray:Vector3):Bool;
    /** Returns closest distance from this line to given point. */
    overload function Distance(pos:Vector3):Single;
    overload function Distance(pos:Vector3, closestPoint:Vector3):Single;
    function Equals(other:Line):Bool;
    /** Returns closest squared distance from this line to given point. */
    function SqrDistance(pos:Vector3):Single;
    function Trace(ray:Ray, radius:Single, maxDistance:Single):Bool;
}
