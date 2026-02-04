package sandbox;

/** Represents a physics object. An entity can have multiple physics objects. See PhysicsGroup. A physics objects consists of one or more PhysicsShapes. */
@:native("Sandbox.PhysicsBody")
final extern class PhysicsBody {
    function new(world:sandbox.PhysicsWorld):Void;
    /** The GameObject that created this body */
    var GameObject(default,default):sandbox.GameObject;
    /** The component that created this body */
    var Component(default,default):sandbox.Component;
    /** Position of this body in world coordinates. */
    var Position(default,default):Vector3;
    /** The physics world this body belongs to. */
    var World(default,never):sandbox.PhysicsWorld;
    /** Rotation of the physics body in world space. */
    var Rotation(default,default):Rotation;
    var Scale(default,never):Single;
    /** Linear velocity of this body in world space. */
    var Velocity(default,default):Vector3;
    /** Angular velocity of this body in world space. */
    var AngularVelocity(default,default):Vector3;
    /** Center of mass for this physics body in world space coordinates. */
    var MassCenter(default,never):Vector3;
    /** Center of mass for this physics body relative to its origin. */
    var LocalMassCenter(default,default):Vector3;
    /** Is this physics body mass calculated or set directly. */
    var OverrideMassCenter(default,default):Bool;
    /** Mass of this physics body. */
    var Mass(default,default):Single;
    /** Whether gravity is enabled for this body or not. */
    var GravityEnabled(default,default):Bool;
    /** Whether to play collision sounds */
    var EnableCollisionSounds(default,default):Bool;
    /** Scale the gravity relative to . 2 is double the gravity, etc. */
    var GravityScale(default,default):Single;
    /** If true we'll create a controller for this physics body. This is useful for keyframed physics objects that need to push things. The controller will sweep as the entity moves, rather than teleporting the object.. which works better when pushing dynamic objects etc. */
    var UseController(default,default):Bool;
    /** Enables Touch callbacks on all PhysicsShapes of this body. Returns true if ANY of the physics shapes have touch events enabled. */
    var EnableTouch(default,default):Bool;
    /** Sets on all shapes of this body. Returns true if ANY of the physics shapes have persistent touch events enabled. */
    var EnableTouchPersists(default,default):Bool;
    /** Sets on all shapes of this body. Returns true if ANY of the physics shapes have solid collisions enabled. */
    var EnableSolidCollisions(default,default):Bool;
    /** Movement type of physics body, either Static, Keyframed, Dynamic Note: If this body is networked and dynamic, it will return Keyframed on the client */
    var BodyType(default,default):sandbox.PhysicsBodyType;
    /** Whether this body is allowed to automatically go into "sleep" after a certain amount of time of inactivity. for more info on the sleep mechanic. */
    var AutoSleep(never,default):Bool;
    /** Transform of this physics body. */
    var Transform(default,default):Transform;
    /** How many shapes belong to this body. */
    var ShapeCount(default,never):Int;
    /** All shapes that belong to this body. */
    var Shapes(default,never):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    /** Whether this body is enabled or not. Disables collisions, physics simulation, touch events, trace queries, etc. */
    var Enabled(default,default):Bool;
    /** Controls physics simulation on this body. */
    var MotionEnabled(default,default):Bool;
    /** Physics bodies automatically go to sleep after a certain amount of time of inactivity to save on performance. You can use this to wake the body up, or prematurely send it to sleep. */
    var Sleeping(default,default):Bool;
    /** If enabled, this physics body will move slightly ahead each frame based on its velocities. */
    var SpeculativeContactEnabled(default,default):Bool;
    /** The physics body we are attached to, if any */
    var Parent(default,default):sandbox.PhysicsBody;
    /** A convenience property, returns Parent, or if there is no parent, returns itself. */
    var SelfOrParent(default,never):sandbox.PhysicsBody;
    /** The physics group we belong to. */
    var PhysicsGroup(default,never):sandbox.PhysicsGroup;
    /** Generic linear damping, i.e. how much the physics body will slow down on its own. */
    var LinearDamping(default,default):Single;
    /** Generic angular damping, i.e. how much the physics body will slow down on its own. */
    var AngularDamping(default,default):Single;
    var LinearDrag(default,default):Single;
    var AngularDrag(default,default):Single;
    var DragEnabled(default,default):Bool;
    /** The diagonal elements of the local inertia tensor matrix. */
    var Inertia(default,never):Vector3;
    /** The orientation of the principal axes of local inertia tensor matrix. */
    var InertiaRotation(default,never):Rotation;
    /** Returns average of densities for all physics shapes of this body. This is based on of each shape. */
    var Density(default,never):Single;
    /** Time since last water splash effect. Used internally. */
    var LastWaterEffect(default,default):sandbox.RealTimeSince;
    /** Sets on all child PhysicsShapes. */
    var SurfaceMaterial(default,default):String;
    var Surface(default,default):sandbox.Surface;
    /** What is this body called in the group? */
    var GroupName(default,never):String;
    /** Return the index of this body in its PhysicsGroup */
    var GroupIndex(default,never):Int;
    var OnIntersectionStart(default,default):system.Action1<sandbox.PhysicsIntersection>;
    var OnIntersectionUpdate(default,default):system.Action1<sandbox.PhysicsIntersection>;
    var OnIntersectionEnd(default,default):system.Action1<sandbox.PhysicsIntersectionEnd>;
    /** Enable enhanced continuous collision detection (CCD) for this body. When enabled, the body performs CCD against dynamic bodies (but not against other bodies with enhanced CCD enabled). This is useful for fast-moving objects like bullets or rockets that need reliable collision detection. */
    var EnhancedCcd(never,default):Bool;
    var Locking(default,default):sandbox.PhysicsLock;
    /** Add a box shape to this body. */
    overload function AddBoxShape(box:BBox, rotation:Rotation, rebuildMass:Bool):sandbox.PhysicsShape;
    overload function AddBoxShape(position:Vector3, rotation:Rotation, extent:Vector3, rebuildMass:Bool):sandbox.PhysicsShape;
    /** Add a capsule shape to this body. */
    function AddCapsuleShape(center:Vector3, center2:Vector3, radius:Single, rebuildMass:Bool):sandbox.PhysicsShape;
    function AddCloneShape(shape:sandbox.PhysicsShape):sandbox.PhysicsShape;
    /** Add a cone shape to this body. */
    function AddConeShape(position:Vector3, rotation:Rotation, height:Single, radius1:Single, radius2:Single, slices:Int):sandbox.PhysicsShape;
    /** Add a cylinder shape to this body. */
    function AddCylinderShape(position:Vector3, rotation:Rotation, height:Single, radius:Single, slices:Int):sandbox.PhysicsShape;
    function AddHeightFieldShape(heights:Array<Int>, materials:Array<Int>, sizeX:Int, sizeY:Int, sizeScale:Single, heightScale:Single):sandbox.PhysicsShape;
    /** Add a convex hull shape to this body. */
    overload function AddHullShape(position:Vector3, rotation:Rotation, points:system.Span<Vector3>, rebuildMass:Bool):sandbox.PhysicsShape;
    overload function AddHullShape(position:Vector3, rotation:Rotation, points:system.collections.generic.List<Vector3>, rebuildMass:Bool):sandbox.PhysicsShape;
    /** Adds a mesh type shape to this physics body. Mesh shapes cannot be physically simulated! */
    overload function AddMeshShape(vertices:system.Span<Vector3>, indices:system.Span<Int>):sandbox.PhysicsShape;
    overload function AddMeshShape(vertices:system.collections.generic.List<Vector3>, indices:system.collections.generic.List<Int>):sandbox.PhysicsShape;
    /** Add a shape from a physics hull */
    overload function AddShape(part:sandbox.physicsgroupdescription.bodypart.HullPart, transform:Transform, rebuildMass:Bool):sandbox.PhysicsShape;
    overload function AddShape(part:sandbox.physicsgroupdescription.bodypart.MeshPart, transform:Transform, convertToHull:Bool, rebuildMass:Bool):sandbox.PhysicsShape;
    /** Add a sphere shape to this body. */
    overload function AddSphereShape(sphere:sandbox.Sphere, rebuildMass:Bool):sandbox.PhysicsShape;
    overload function AddSphereShape(center:Vector3, radius:Single, rebuildMass:Bool):sandbox.PhysicsShape;
    /** Applies instant angular impulse (i.e. a bullet impact) to this body. For continuous force (i.e. a moving car), use */
    function ApplyAngularImpulse(impulse:Vector3):Void;
    /** Applies force to this body at the center of mass. This force will only be applied on the next physics frame and is scaled with physics timestep. */
    function ApplyForce(force:Vector3):Void;
    /** Applies force to this body at given position. This force will only be applied on the next physics frame and is scaled with physics timestep. */
    function ApplyForceAt(position:Vector3, force:Vector3):Void;
    /** Applies instant linear impulse (i.e. a bullet impact) to this body at its center of mass. For continuous force (i.e. a moving car), use */
    function ApplyImpulse(impulse:Vector3):Void;
    /** Applies instant linear impulse (i.e. a bullet impact) to this body at given position. For continuous force (i.e. a moving car), use */
    function ApplyImpulseAt(position:Vector3, velocity:Vector3):Void;
    /** Applies angular velocity to this body. This force will only be applied on the next physics frame and is scaled with physics timestep. */
    function ApplyTorque(force:Vector3):Void;
    /** Checks if another body overlaps us, ignoring all collision rules */
    overload function CheckOverlap(body:sandbox.PhysicsBody):Bool;
    overload function CheckOverlap(body:sandbox.PhysicsBody, transform:Transform):Bool;
    /** Clear accumulated linear forces ( and ) during this physics frame that were not yet applied to the physics body. */
    function ClearForces():Void;
    /** Remove all physics shapes, but not the physics body itself. */
    function ClearShapes():Void;
    /** Clear accumulated torque (angular force, ) during this physics frame that were not yet applied to the physics body. */
    function ClearTorque():Void;
    /** Returns the closest point to the given one between all shapes of this body. */
    function FindClosestPoint(vec:Vector3):Vector3;
    /** Returns Axis-Aligned Bounding Box (AABB) of this physics body. */
    function GetBounds():BBox;
    function GetGameObject():sandbox.GameObject;
    /** When the physics world is run at a fixed timestep, getting the positions of bodies will not be smooth. You can use this function to get the lerped position between steps, to make things super awesome. */
    function GetLerpedTransform(time:Single):Transform;
    /** Returns the world space velocity of a point of the object. This is useful for objects rotating around their own axis/origin. */
    function GetVelocityAtPoint(point:Vector3):Vector3;
    /** Convenience function that returns a from a position relative to this body. */
    function LocalPoint(p:Vector3):sandbox.physics.PhysicsPoint;
    /** Returns a at the center of mass of this body. */
    function MassCenterPoint():sandbox.physics.PhysicsPoint;
    /** Move to a new position. Unlike Transform, if you have `UseController` enabled, this will sweep the shadow to the new position, rather than teleporting there. */
    function Move(tx:Transform, delta:Single):Void;
    /** Meant to be only used on dynamic bodies, rebuilds mass from all shapes of this body based on their volume and physics properties, for cases where they may have changed. */
    function RebuildMass():Void;
    /** Completely removes this physics body. */
    function Remove():Void;
    /** Resets the inertia tensor to its calculated values. */
    function ResetInertiaTensor():Void;
    function SetComponentSource(c:sandbox.Component):Void;
    /** Sets the inertia tensor using the given moments and rotation. */
    function SetInertiaTensor(inertia:Vector3, rotation:Rotation):Void;
    overload function SmoothMove(transform:Transform, smoothTime:Single, timeDelta:Single):Void;
    overload function SmoothMove(position:Vector3, timeToArrive:Single, timeDelta:Single):Void;
    function SmoothRotate(rotation:Rotation, smoothTime:Single, timeDelta:Single):Void;
    /** Convenience function that returns a for this body from a world space position. */
    function WorldPoint(p:Vector3):sandbox.physics.PhysicsPoint;
}
