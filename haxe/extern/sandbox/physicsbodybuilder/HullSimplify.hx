package sandbox.physicsbodybuilder;

/** Settings for simplifying a hull shape. */
@:native("Sandbox.PhysicsBodyBuilder.HullSimplify")
final extern class HullSimplify {
    var AngleTolerance(default,set):Single;

    private inline function set_AngleTolerance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.AngleTolerance = {1}", this, __value);
    }

    var DistanceTolerance(default,set):Single;

    private inline function set_DistanceTolerance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.DistanceTolerance = {1}", this, __value);
    }

    var MaxFaces(default,set):Int;

    private inline function set_MaxFaces(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxFaces = {1}", this, __value);
    }

    var MaxEdges(default,set):Int;

    private inline function set_MaxEdges(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxEdges = {1}", this, __value);
    }

    var MaxVerts(default,set):Int;

    private inline function set_MaxVerts(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MaxVerts = {1}", this, __value);
    }

    var Method(default,set):sandbox.physicsbodybuilder.SimplifyMethod;

    private inline function set_Method(value:sandbox.physicsbodybuilder.SimplifyMethod):sandbox.physicsbodybuilder.SimplifyMethod {
        var __value:sandbox.physicsbodybuilder.SimplifyMethod = cast value;
        return untyped __cs__("{0}.Method = {1}", this, __value);
    }

}
