package sandbox.rangedfloat;

/** Range type of . */
@:native("RangedFloat.RangeType")
extern enum abstract RangeType(Int) {
    var Fixed;
    var Between;
}
