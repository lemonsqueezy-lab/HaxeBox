package sandbox;

/** Provides ability to generate s at runtime. A static instance of this class is available at */
@:native("Sandbox.ModelBuilder")
final extern class ModelBuilder {
    function new():Void;
    /** Adds an animation to this model and returns a builder to construct the animation. */
    function AddAnimation(name:String, frameRate:Single):sandbox.AnimationBuilder;
    /** Add an attachment to the skeleton. */
    function AddAttachment(name:String, position:Vector3, rotation:Rotation, parentName:String):sandbox.ModelBuilder;
    /** Adds a ball joint between two bodies, allowing free rotation within optional swing/twist limits. */
    function AddBallJoint(body1:Int, body2:Int, frame1:Null<Transform>, frame2:Null<Transform>, collision:Bool):sandbox.BallJointBuilder;
    /** Adds a new physics body to this object. */
    function AddBody(mass:Single, surface:sandbox.Surface, boneName:String):sandbox.PhysicsBodyBuilder;
    /** Add a bone to the skeleton via a struct. */
    overload function AddBone(bone:sandbox.modelbuilder.Bone):Void;
    overload function AddBone(name:String, position:Vector3, rotation:Rotation, parentName:String):sandbox.ModelBuilder;
    /** Add multiple bones to the skeleton. */
    function AddBones(bones:Array<sandbox.modelbuilder.Bone>):Void;
    /** Add box collision shape. */
    function AddCollisionBox(extents:Vector3, center:Null<Vector3>, rotation:Null<Rotation>):sandbox.ModelBuilder;
    /** Add capsule collision shape. */
    function AddCollisionCapsule(center0:Vector3, center1:Vector3, radius:Single):sandbox.ModelBuilder;
    /** Add a CONVEX hull collision shape. */
    overload function AddCollisionHull(vertices:system.Span<Vector3>, center:Null<Vector3>, rotation:Null<Rotation>):sandbox.ModelBuilder;
    overload function AddCollisionHull(vertices:system.collections.generic.List<Vector3>, center:Null<Vector3>, rotation:Null<Rotation>):sandbox.ModelBuilder;
    /** Add a CONCAVE mesh collision shape. (This shape can NOT be physically simulated) */
    overload function AddCollisionMesh(vertices:system.Span<Vector3>, indices:system.Span<Int>):sandbox.ModelBuilder;
    overload function AddCollisionMesh(vertices:system.collections.generic.List<Vector3>, indices:system.collections.generic.List<Int>):sandbox.ModelBuilder;
    overload function AddCollisionMesh(vertices:system.Span<Vector3>, indices:system.Span<Int>, materials:system.Span<Int>):sandbox.ModelBuilder;
    overload function AddCollisionMesh(vertices:system.collections.generic.List<Vector3>, indices:system.collections.generic.List<Int>, materials:system.collections.generic.List<Int>):sandbox.ModelBuilder;
    /** Add sphere collision shape. */
    function AddCollisionSphere(radius:Single, center:Vector3):sandbox.ModelBuilder;
    /** Adds a fixed joint between two bodies, locking their relative position and orientation. */
    function AddFixedJoint(body1:Int, body2:Int, frame1:Null<Transform>, frame2:Null<Transform>, collision:Bool):sandbox.FixedJointBuilder;
    /** Adds a hinge joint between two bodies, allowing rotation around a single axis. */
    function AddHingeJoint(body1:Int, body2:Int, frame1:Null<Transform>, frame2:Null<Transform>, collision:Bool):sandbox.HingeJointBuilder;
    /** Add a named material group builder. */
    function AddMaterialGroup(name:String):sandbox.MaterialGroupBuilder;
    /** Add a mesh. */
    overload function AddMesh(mesh:sandbox.Mesh):sandbox.ModelBuilder;
    overload function AddMesh(mesh:sandbox.Mesh, lod:Int):sandbox.ModelBuilder;
    overload function AddMesh(mesh:sandbox.Mesh, groupName:String, choiceIndex:Int):sandbox.ModelBuilder;
    overload function AddMesh(mesh:sandbox.Mesh, lod:Int, groupName:String, choiceIndex:Int):sandbox.ModelBuilder;
    /** Add a bunch of meshes. */
    overload function AddMeshes(meshes:Array<sandbox.Mesh>):sandbox.ModelBuilder;
    overload function AddMeshes(meshes:Array<sandbox.Mesh>, lod:Int):sandbox.ModelBuilder;
    /** Adds a slider joint between two bodies, allowing motion along a single axis. */
    function AddSliderJoint(body1:Int, body2:Int, frame1:Null<Transform>, frame2:Null<Transform>, collision:Bool):sandbox.SliderJointBuilder;
    function AddSurface(surface:sandbox.Surface):sandbox.ModelBuilder;
    /** Add trace vertices for tracing against mesh */
    overload function AddTraceMesh(vertices:system.Span<Vector3>, indices:system.Span<Int>):sandbox.ModelBuilder;
    overload function AddTraceMesh(vertices:system.collections.generic.List<Vector3>, indices:system.collections.generic.List<Int>):sandbox.ModelBuilder;
    /** Finish creation of the model. */
    function Create():sandbox.Model;
    /** LOD switch distance increment for each Level of Detail (LOD) level. (Default is 50) */
    function WithLodDistance(lod:Int, distance:Single):sandbox.ModelBuilder;
    /** Total mass of the physics body (Default is 1000) */
    function WithMass(mass:Single):sandbox.ModelBuilder;
    /** Provide a name to identify the model by */
    function WithName(name:String):sandbox.ModelBuilder;
    /** Surface property to use for collision */
    function WithSurface(name:String):sandbox.ModelBuilder;
}
