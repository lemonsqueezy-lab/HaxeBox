package sandbox;

/** Provides ability to generate a physics body for a at runtime. See */
@:native("Sandbox.PhysicsBodyBuilder")
final extern class PhysicsBodyBuilder {
    /** The mass of the body in kilograms. Set to 0 to calculate automatically from its shapes and density. */
    var Mass(default,default):Single;
    /** The surface properties applied to this body. */
    var Surface(default,default):sandbox.Surface;
    /** The bind pose transform used when attaching this body to a bone. */
    var BindPose(default,default):Transform;
    /** The name of the bone this body is attached to, or null if not attached. */
    var BoneName(default,default):String;
    /** Add a capsule shape. */
    function AddCapsule(capsule:Capsule, transform:Null<Transform>):sandbox.PhysicsBodyBuilder;
    /** Adds a convex hull shape to this body. */
    function AddHull(points:system.Span<Vector3>, transform:Null<Transform>, simplify:Null<sandbox.physicsbodybuilder.HullSimplify>):sandbox.PhysicsBodyBuilder;
    /** Adds a triangle mesh shape to this body. */
    function AddMesh(vertices:system.Span<Vector3>, indices:system.Span<UInt>, materials:system.Span<Int>):sandbox.PhysicsBodyBuilder;
    /** Add a sphere shape. */
    function AddSphere(sphere:sandbox.Sphere, transform:Null<Transform>):sandbox.PhysicsBodyBuilder;
    function SetBindPose(bindPose:Transform):sandbox.PhysicsBodyBuilder;
    function SetBoneName(boneName:String):sandbox.PhysicsBodyBuilder;
    function SetMass(mass:Single):sandbox.PhysicsBodyBuilder;
    function SetSurface(surface:sandbox.Surface):sandbox.PhysicsBodyBuilder;
}
