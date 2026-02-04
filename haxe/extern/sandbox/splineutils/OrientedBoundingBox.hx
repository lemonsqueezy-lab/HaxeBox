package sandbox.splineutils;

@:native("Sandbox.SplineUtils.OrientedBoundingBox")
final extern class OrientedBoundingBox {
    var Transform(default,set):Transform;

    private inline function set_Transform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    var Extents(default,set):Vector3;

    private inline function set_Extents(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Extents = {1}", this, __value);
    }

}
