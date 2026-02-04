package;

/** An Axis Aligned Bounding Box. */
@:native("BBox")
final extern class BBox {
    /** Initializes a zero sized BBox with given center. This is useful if you intend to use AddPoint to expand the box later. */
    overload function new(center:Vector3, size:Single):Void;
    /** Initialize an AABB with given mins and maxs corners. See . */
    overload function new(mins:Vector3, maxs:Vector3):Void;
    /** An enumerable that contains all corners of this AABB. */
    var Corners(default,never):system.collections.generic.IEnumerable<Vector3>;
    /** Calculated center of the AABB. */
    var Center(default,never):Vector3;
    /** Calculated size of the AABB on each axis. */
    var Size(default,never):Vector3;
    /** The extents of the bbox. This is half the size. */
    var Extents(default,never):Vector3;
    /** Returns a random point within this AABB. */
    var RandomPointInside(default,never):Vector3;
    /** Returns a random point within this AABB. */
    var RandomPointOnEdge(default,never):Vector3;
    /** Returns the physical volume of this AABB. */
    var Volume(default,never):Single;
    var Mins(default,set):Vector3;

    private inline function set_Mins(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Mins = {1}", this, __value);
    }

    var Maxs(default,set):Vector3;

    private inline function set_Maxs(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Maxs = {1}", this, __value);
    }

    function AddBBox(point:BBox):BBox;
    function AddPoint(point:Vector3):BBox;
    function ClosestPoint(point:Vector3):Vector3;
    overload function Contains(b:BBox):Bool;
    overload function Contains(b:Vector3, epsilon:Single):Bool;
    overload function Equals(o:BBox):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    /** Create a bounding box from an arbituary number of other boxes */
    static function FromBoxes(boxes:system.collections.generic.IEnumerable<BBox>):BBox;
    /** Creates an AABB of length and depth, and given */
    static function FromHeightAndRadius(height:Single, radius:Single):BBox;
    /** Create a bounding box from an arbituary number of points */
    static function FromPoints(points:system.collections.generic.IEnumerable<Vector3>, size:Single):BBox;
    /** Creates an AABB at given position and given a.k.a. "extents". */
    static overload function FromPositionAndSize(center:Vector3, size:Single):BBox;
    static overload function FromPositionAndSize(center:Vector3, size:Vector3):BBox;
    /** Calculates the shortest distance from the specified local position to the nearest edge of the shape. */
    function GetEdgeDistance(localPos:Vector3):Single;
    function GetHashCode():Int;
    /** Get the volume of this AABB */
    function GetVolume():Single;
    function Grow(skin:Single):BBox;
    function Overlaps(b:BBox):Bool;
    function Rotate(rotation:Rotation):BBox;
    /** Snap this AABB to a grid */
    function Snap(distance:Single):BBox;
    /** Formats this AABB into a string "mins x,y,z, maxs x,y,z" */
    function ToString():String;
    function Trace(ray:Ray, distance:Single, hitDistance:Single):Bool;
    function Transform(transform:Transform):BBox;
    function Translate(point:Vector3):BBox;
}
