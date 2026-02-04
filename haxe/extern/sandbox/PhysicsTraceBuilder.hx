package sandbox;

@:native("Sandbox.PhysicsTraceBuilder")
final extern class PhysicsTraceBuilder {
    overload function Body(body:sandbox.PhysicsBody, to:Vector3):sandbox.PhysicsTraceBuilder;
    overload function Body(body:sandbox.PhysicsBody, from:Transform, to:Vector3):sandbox.PhysicsTraceBuilder;
    overload function Box(bbox:BBox, ray:Ray, distance:Single):sandbox.PhysicsTraceBuilder;
    overload function Box(bbox:BBox, from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    overload function Box(extents:Vector3, ray:Ray, distance:Single):sandbox.PhysicsTraceBuilder;
    overload function Box(extents:Vector3, from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    /** Casts a capsule */
    overload function Capsule(capsule:Capsule):sandbox.PhysicsTraceBuilder;
    overload function Capsule(capsule:Capsule, ray:Ray, distance:Single):sandbox.PhysicsTraceBuilder;
    overload function Capsule(capsule:Capsule, from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    /** Casts a cylinder */
    overload function Cylinder(height:Single, radius:Single):sandbox.PhysicsTraceBuilder;
    overload function Cylinder(height:Single, radius:Single, ray:Ray, distance:Single):sandbox.PhysicsTraceBuilder;
    overload function Cylinder(height:Single, radius:Single, from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    overload function FromTo(from:Transform, to:Vector3):sandbox.PhysicsTraceBuilder;
    overload function FromTo(from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    /** Include triggers in the trace */
    function HitTriggers():sandbox.PhysicsTraceBuilder;
    /** Only hit triggers */
    function HitTriggersOnly():sandbox.PhysicsTraceBuilder;
    /** Ignore dynamic objects in the trace */
    function IgnoreDynamic():sandbox.PhysicsTraceBuilder;
    /** Ignore keyframed objects in the trace */
    function IgnoreKeyframed():sandbox.PhysicsTraceBuilder;
    /** Ignore static objects in the trace */
    function IgnoreStatic():sandbox.PhysicsTraceBuilder;
    /** Makes this trace a sphere of given radius. */
    function Radius(radius:Single):sandbox.PhysicsTraceBuilder;
    overload function Ray(ray:Ray, distance:Single):sandbox.PhysicsTraceBuilder;
    overload function Ray(from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    function Rotated(rotation:Rotation):sandbox.PhysicsTraceBuilder;
    /** Run the trace and return the result. The result will return the first hit. */
    function Run():sandbox.PhysicsTraceResult;
    function RunAgainstBBox(box:BBox, transform:Transform):sandbox.PhysicsTraceResult;
    function RunAgainstCapsule(capsule:Capsule, transform:Transform):sandbox.PhysicsTraceResult;
    function RunAgainstSphere(sphere:sandbox.Sphere, transform:Transform):sandbox.PhysicsTraceResult;
    /** Run the trace and return all hits as a result. */
    function RunAll():Array<sandbox.PhysicsTraceResult>;
    overload function Size(hull:BBox):sandbox.PhysicsTraceBuilder;
    overload function Size(size:Vector3):sandbox.PhysicsTraceBuilder;
    overload function Size(mins:Vector3, maxs:Vector3):sandbox.PhysicsTraceBuilder;
    overload function Sphere(radius:Single, ray:Ray, distance:Single):sandbox.PhysicsTraceBuilder;
    overload function Sphere(radius:Single, from:Vector3, to:Vector3):sandbox.PhysicsTraceBuilder;
    overload function Sweep(body:sandbox.PhysicsBody, to:Transform):sandbox.PhysicsTraceBuilder;
    overload function Sweep(body:sandbox.PhysicsBody, from:Transform, to:Transform):sandbox.PhysicsTraceBuilder;
    /** Compute hit position. */
    function UseHitPosition(enabled:Bool):sandbox.PhysicsTraceBuilder;
    /** Only return with all of these tags */
    overload function WithAllTags(tags:Array<String>):sandbox.PhysicsTraceBuilder;
    overload function WithAllTags(tags:sandbox.ITagSet):sandbox.PhysicsTraceBuilder;
    /** Only return entities with any of these tags */
    overload function WithAnyTags(tags:Array<String>):sandbox.PhysicsTraceBuilder;
    overload function WithAnyTags(tags:sandbox.ITagSet):sandbox.PhysicsTraceBuilder;
    /** Use the collision rules of the given tag. */
    overload function WithCollisionRules(tag:String, asTrigger:Bool):sandbox.PhysicsTraceBuilder;
    overload function WithCollisionRules(tags:system.collections.generic.IEnumerable<String>, asTrigger:Bool):sandbox.PhysicsTraceBuilder;
    /** Only return entities with this tag. Subsequent calls to this will add multiple requirements and they'll all have to be met (ie, the entity will need all tags). */
    function WithTag(ident:sandbox.StringToken):sandbox.PhysicsTraceBuilder;
    /** Only return with any of these tags */
    function WithoutTag(tag:String):sandbox.PhysicsTraceBuilder;
    /** Only return without any of these tags */
    overload function WithoutTags(tags:Array<String>):sandbox.PhysicsTraceBuilder;
    overload function WithoutTags(tags:sandbox.ITagSet):sandbox.PhysicsTraceBuilder;
}
