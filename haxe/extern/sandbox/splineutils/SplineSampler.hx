package sandbox.splineutils;

@:native("Sandbox.SplineUtils.SplineSampler")
extern class SplineSampler {
    function new():Void;
    function CalculateSegmentParamsAtDistance(distance:Single):sandbox.splineutils.SegmentParams;
    function CalculateSegmentTAtDistance(segmentIndex:Int, distance:Single):Null<Single>;
    function GetDistanceAtSplineParams(segmentParams:sandbox.splineutils.SegmentParams):Single;
    function GetSegmentBounds(segmentIndex:Int):BBox;
    function GetSegmentLength(segmentIndex:Int):Single;
    function GetSegmentStartDistance(segmentIndex:Int):Single;
    function GetTotalBounds():BBox;
    function Sample(spline:system.collections.objectmodel.ReadOnlyCollection<sandbox.spline.Point>):Void;
    function TotalLength():Single;
}
