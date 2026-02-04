package sandbox;

/** Represents a ray tracing acceleration structure that contains geometry for efficient ray intersection testing. This is used to organize scene geometry in a hierarchical structure optimized for ray tracing performance. */
@:native("Sandbox.RayTracingAccelerationStructure")
extern class RayTracingAccelerationStructure {
    /** Create a ray tracing acceleration structure from scene geometry. */
    static function Create(geometryData:cs.system.Object):sandbox.RayTracingAccelerationStructure;
    /** Releases the native resources associated with this acceleration structure. */
    function Dispose():Void;
    /** Gets whether this acceleration structure is valid and can be used for ray tracing. */
    function IsValid():Bool;
    /** Updates the acceleration structure with new geometry data. This is more efficient than rebuilding from scratch for dynamic geometry. */
    function Update(geometryData:cs.system.Object):Void;
}
