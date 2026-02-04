package sandbox;

/** Collection of curves in 3D space. Shape and behavior of the curves are controled through points , each with customizable handles, roll, scale, and up vectors. Two consecutive points define a segment/curve of the spline. By adjusting the handles both smooth and sharp corners can be created. The spline can also be turned into a loop, combined with linear tangents this can be used to create polygons. Splines can also be used used for animations, camera movements, marking areas, or procedural geometry generation. */
@:native("Sandbox.Spline")
extern class Spline {
    function new():Void;
    /** Whether the spline forms a loop. */
    var IsLoop(default,default):Bool;
    /** Total length of the spline. */
    var Length(default,never):Single;
    /** Total bounds of the spline. */
    var Bounds(default,never):BBox;
    /** Number of points in the spline. */
    var PointCount(default,never):Int;
    /** Number of segments in the spline, a spline contains one less segment than points. */
    var SegmentCount(default,never):Int;
    var SplineChanged(default,default):system.Action;
    /** Adds a point to the end of the spline. */
    function AddPoint(newPoint:sandbox.spline.Point):Void;
    /** Adds a point at a specific distance along the spline. Returns the index of the added spline point. Tangents of the new point and adjacent points will be calculated so the spline shape remains the same. Unless inferTangentModes is set to true, in which case the tangent modes will be inferred from the adjacent points. */
    function AddPointAtDistance(distance:Single, inferTangentModes:Bool):Int;
    /** Removes all points from the spline. */
    function Clear():Void;
    /** Converts the spline to a polyline. */
    overload function ConvertToPolyline():system.collections.generic.List<Vector3>;
    overload function ConvertToPolyline(outPolyLine:system.collections.generic.List<Vector3>):Void;
    /** Fetches how far along the spline a point is. */
    function GetDistanceAtPoint(pointIndex:Int):Single;
    /** Access the information about a spline point. */
    function GetPoint(pointIndex:Int):sandbox.spline.Point;
    /** Bounds of an individual spline segment. */
    function GetSegmentBounds(segmentIndex:Int):BBox;
    /** Fetches the length of an individual spline segment. */
    function GetSegmentLength(segmentIndex:Int):Single;
    /** Adds a point at an index */
    function InsertPoint(pointIndex:Int, newPoint:sandbox.spline.Point):Void;
    /** Removes the point at the specified index. */
    function RemovePoint(pointIndex:Int):Void;
    /** Calculates a bunch of information about the spline at the position closest to the specified position. */
    function SampleAtClosestPosition(position:Vector3):sandbox.spline.Sample;
    /** Calculates a bunch of information about the spline at a specific distance. */
    function SampleAtDistance(distance:Single):sandbox.spline.Sample;
    /** Update the information stored at a spline point. */
    function UpdatePoint(pointIndex:Int, updatedPoint:sandbox.spline.Point):Void;
}
