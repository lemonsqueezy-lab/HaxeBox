package sandbox;

/** Defines a box, cone, or cylinder hull collider. */
@:native("Sandbox.HullCollider")
final extern class HullCollider extends sandbox.Collider {
    function new():Void;
    /** The type of primitive. */
    var Type(default,default):sandbox.hullcollider.PrimitiveType;
    /** The center of the primitive relative to this GameObject. */
    var Center(default,default):Vector3;
    /** The size of the box, from corner to corner. */
    var BoxSize(default,default):Vector3;
    var Height(default,default):Single;
    var Radius(default,default):Single;
    var Radius2(default,default):Single;
    var Slices(default,default):Int;
    var Points(default,default):system.collections.generic.List<Vector3>;
    @:protected function CreatePhysicsShapes(body:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    @:protected function DrawGizmos():Void;
}
