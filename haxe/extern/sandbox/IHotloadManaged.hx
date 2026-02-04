package sandbox;

/** During hotloads, instances of types implementing this interface will be notified when they get replaced. */
@:native("Sandbox.IHotloadManaged")
extern class IHotloadManaged {
    /** Called when this instance has been created during a hotload, replacing an instance from an older version of the containing assembly. The parameter will contain any values populated when was called on the old instance that was replaced. */
    function Created(state:system.collections.generic.IReadOnlyDictionary<String,cs.system.Object>):Void;
    /** Called when this instance is about to be replaced during a hotload. The implementor may optionally write to the dictionary, which gets passed to the new replacing instance when is called on it. */
    function Destroyed(state:system.collections.generic.Dictionary<String,cs.system.Object>):Void;
    /** Called when this instance could not be upgraded during a hotload, and any references to it have been replaced with null. This is a good time to clean up any unmanaged resources related to this instance. */
    function Failed():Void;
    /** Called when this instance is about to be processed, but not replaced. */
    function Persisted():Void;
}
