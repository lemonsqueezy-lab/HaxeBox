package sandbox.hullcollider;

@:native("Sandbox.HullCollider.PrimitiveType")
extern enum abstract PrimitiveType(Int) {
    var Box;
    var Cone;
    var Cylinder;
    var Points;
}
