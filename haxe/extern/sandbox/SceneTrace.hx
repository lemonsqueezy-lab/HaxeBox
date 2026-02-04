package sandbox;

@:native("Sandbox.SceneTrace")
final extern class SceneTrace {
    var PhysicsTrace(default,set):sandbox.PhysicsTraceBuilder;

    private inline function set_PhysicsTrace(value:sandbox.PhysicsTraceBuilder):sandbox.PhysicsTraceBuilder {
        var __value:sandbox.PhysicsTraceBuilder = cast value;
        return untyped __cs__("{0}.PhysicsTrace = {1}", this, __value);
    }

    overload function Body(body:sandbox.PhysicsBody, to:Vector3):sandbox.SceneTrace;
    overload function Body(body:sandbox.Rigidbody, to:Vector3):sandbox.SceneTrace;
    overload function Body(body:sandbox.PhysicsBody, from:Transform, to:Vector3):sandbox.SceneTrace;
    overload function Box(bbox:BBox, ray:Ray, distance:Single):sandbox.SceneTrace;
    overload function Box(bbox:BBox, from:Vector3, to:Vector3):sandbox.SceneTrace;
    overload function Box(extents:Vector3, ray:Ray, distance:Single):sandbox.SceneTrace;
    overload function Box(extents:Vector3, from:Vector3, to:Vector3):sandbox.SceneTrace;
    /** Casts a capsule */
    overload function Capsule(capsule:Capsule):sandbox.SceneTrace;
    overload function Capsule(capsule:Capsule, ray:Ray, distance:Single):sandbox.SceneTrace;
    overload function Capsule(capsule:Capsule, from:Vector3, to:Vector3):sandbox.SceneTrace;
    /** Casts a cylinder */
    overload function Cylinder(height:Single, radius:Single):sandbox.SceneTrace;
    overload function Cylinder(height:Single, radius:Single, ray:Ray, distance:Single):sandbox.SceneTrace;
    overload function Cylinder(height:Single, radius:Single, from:Vector3, to:Vector3):sandbox.SceneTrace;
    overload function FromTo(from:Transform, to:Vector3):sandbox.SceneTrace;
    overload function FromTo(from:Vector3, to:Vector3):sandbox.SceneTrace;
    /** Hit Triggers */
    function HitTriggers():sandbox.SceneTrace;
    /** Hit Only Triggers */
    function HitTriggersOnly():sandbox.SceneTrace;
    /** Do not hit dynamic objects */
    function IgnoreDynamic():sandbox.SceneTrace;
    /** Do not hit this object */
    function IgnoreGameObject(obj:sandbox.GameObject):sandbox.SceneTrace;
    /** Do not hit this object */
    function IgnoreGameObjectHierarchy(obj:sandbox.GameObject):sandbox.SceneTrace;
    /** Do not hit keyframed objects */
    function IgnoreKeyframed():sandbox.SceneTrace;
    /** Do not hit static objects */
    function IgnoreStatic():sandbox.SceneTrace;
    /** Makes this trace a sphere of given radius. */
    function Radius(radius:Single):sandbox.SceneTrace;
    overload function Ray(ray:Ray, distance:Single):sandbox.SceneTrace;
    overload function Ray(from:Vector3, to:Vector3):sandbox.SceneTrace;
    function Rotated(rotation:Rotation):sandbox.SceneTrace;
    /** Run the trace and return the result. The result will return the first hit. */
    function Run():sandbox.SceneTraceResult;
    /** Run the trace and record everything we hit along the way. The result will be an array of hits. */
    function RunAll():system.collections.generic.IEnumerable<sandbox.SceneTraceResult>;
    overload function Size(hull:BBox):sandbox.SceneTrace;
    overload function Size(size:Vector3):sandbox.SceneTrace;
    overload function Size(mins:Vector3, maxs:Vector3):sandbox.SceneTrace;
    overload function Sphere(radius:Single, ray:Ray, distance:Single):sandbox.SceneTrace;
    overload function Sphere(radius:Single, from:Vector3, to:Vector3):sandbox.SceneTrace;
    overload function Sweep(body:sandbox.PhysicsBody, to:Transform):sandbox.SceneTrace;
    overload function Sweep(body:sandbox.PhysicsBody, from:Transform, to:Transform):sandbox.SceneTrace;
    overload function Sweep(body:sandbox.Rigidbody, from:Transform, to:Transform):sandbox.SceneTrace;
    /** Should we compute hit position. */
    function UseHitPosition(enabled:Bool):sandbox.SceneTrace;
    /** Should we hit hitboxes */
    function UseHitboxes(hit:Bool):sandbox.SceneTrace;
    /** Should we hit physics objects? */
    function UsePhysicsWorld(hit:Bool):sandbox.SceneTrace;
    /** Should we hit meshes too? This can be slow and only works for the editor. */
    overload function UseRenderMeshes(hit:Bool):sandbox.SceneTrace;
    overload function UseRenderMeshes(hitFront:Bool, hitBack:Bool):sandbox.SceneTrace;
    /** Only return entities with all of these tags */
    overload function WithAllTags(tags:Array<String>):sandbox.SceneTrace;
    overload function WithAllTags(tags:sandbox.ITagSet):sandbox.SceneTrace;
    /** Only return entities with any of these tags */
    overload function WithAnyTags(tags:Array<String>):sandbox.SceneTrace;
    overload function WithAnyTags(tags:sandbox.ITagSet):sandbox.SceneTrace;
    /** Use the collision rules of an object with the given tags. */
    overload function WithCollisionRules(tag:String, asTrigger:Bool):sandbox.SceneTrace;
    overload function WithCollisionRules(tags:system.collections.generic.IEnumerable<String>, asTrigger:Bool):sandbox.SceneTrace;
    /** Only return entities with this tag. Subsequent calls to this will add multiple requirements and they'll all have to be met (ie, the entity will need all tags). */
    function WithTag(tag:String):sandbox.SceneTrace;
    /** Only return entities without any of these tags */
    overload function WithoutTags(tags:Array<String>):sandbox.SceneTrace;
    overload function WithoutTags(tags:sandbox.ITagSet):sandbox.SceneTrace;
}
