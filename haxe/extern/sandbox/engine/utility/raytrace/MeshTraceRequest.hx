package sandbox.engine.utility.raytrace;

@:native("Sandbox.Engine.Utility.RayTrace.MeshTraceRequest")
final extern class MeshTraceRequest {
    overload function Ray(ray:Ray, distance:Single):sandbox.engine.utility.raytrace.MeshTraceRequest;
    overload function Ray(from:Vector3, to:Vector3):sandbox.engine.utility.raytrace.MeshTraceRequest;
    /** Run the trace and return the result. The result will return the first hit. */
    function Run():sandbox.engine.utility.raytrace.meshtracerequest.Result;
    /** Only return scene objects with all of these tags */
    function WithAllTags(tags:Array<String>):sandbox.engine.utility.raytrace.MeshTraceRequest;
    /** Only return scene objects with any of these tags */
    function WithAnyTags(tags:Array<String>):sandbox.engine.utility.raytrace.MeshTraceRequest;
    /** Only return scene objects with this tag. Subsequent calls to this will add multiple requirements and they'll all have to be met (ie, the scene object will need all tags). */
    function WithTag(tag:String):sandbox.engine.utility.raytrace.MeshTraceRequest;
    /** Only return scene objects without any of these tags */
    function WithoutTags(tags:Array<String>):sandbox.engine.utility.raytrace.MeshTraceRequest;
}
