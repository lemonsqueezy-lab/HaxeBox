package sandbox;

/** Represents a basic, convex shape. A PhysicsBody consists of one or more of these. */
@:native("Sandbox.PhysicsShape")
final extern class PhysicsShape {
    /** The physics body we belong to. */
    var Body(default,never):sandbox.PhysicsBody;
    var Scale(default,never):Vector3;
    /** The collider object that created / owns this shape */
    var Collider(default,default):sandbox.Collider;
    /** This is a trigger (!) */
    var IsTrigger(default,default):Bool;
    /** Set the local velocity of the surface so things can slide along it, like a conveyor belt */
    var SurfaceVelocity(default,default):Vector3;
    /** Controls whether this shape has solid collisions. */
    var EnableSolidCollisions(default,default):Bool;
    /** Controls whether this shape can fire touch events for its owning entity. (Entity.StartTouch, Touch and EndTouch) */
    var EnableTouch(default,default):Bool;
    /** Controls whether this shape can fire continuous touch events for its owning entity (i.e. calling Entity.Touch every frame) */
    var EnableTouchPersists(default,default):Bool;
    /** Is this a MeshShape */
    var IsMeshShape(default,never):Bool;
    /** Is this a HullShape */
    var IsHullShape(default,never):Bool;
    /** Is this a SphereShape */
    var IsSphereShape(default,never):Bool;
    /** Is this a CapsuleShape */
    var IsCapsuleShape(default,never):Bool;
    /** Is this a HeightfieldShape */
    var IsHeightfieldShape(default,never):Bool;
    /** Get sphere properties if we're a sphere type */
    var Sphere(default,never):sandbox.Sphere;
    /** Get capsule properties if we're a capsule type */
    var Capsule(default,never):Capsule;
    /** Controls physical properties of this shape. */
    var SurfaceMaterial(default,default):String;
    var Surface(default,default):sandbox.Surface;
    /** Multiple surfaces referenced by mesh or heightfield collision. */
    var Surfaces(never,default):Array<sandbox.Surface>;
    /** The friction value */
    var Friction(default,default):Single;
    var Tags(default,never):sandbox.ITagSet;
    /** Add a tag to this shape. */
    function AddTag(tag:String):Bool;
    /** Clear all tags from this shape. */
    function ClearTags():Bool;
    /** Disable contact, trace and touch */
    function DisableAllCollision():Void;
    /** Enable contact, trace and touch */
    function EnableAllCollision():Void;
    /** Does this shape have a specific tag? */
    function HasTag(tag:String):Bool;
    /** Remove this shape. After calling this the shape should be considered released and not used again. */
    function Remove():Void;
    /** Remove a tag from this shape. */
    function RemoveTag(tag:String):Bool;
    function Triangulate(positions:Array<Vector3>, indices:Array<UInt>):Void;
    /** Recreate the hull of the shape (Only if this physics shape is type Hull) */
    function UpdateHull(position:Vector3, rotation:Rotation, points:system.Span<Vector3>):Void;
    /** Recreate the mesh of the shape (Only if this physics shape is type Mesh) */
    overload function UpdateMesh(vertices:system.Span<Vector3>, indices:system.Span<Int>):Void;
    overload function UpdateMesh(vertices:system.collections.generic.List<Vector3>, indices:system.collections.generic.List<Int>):Void;
}
