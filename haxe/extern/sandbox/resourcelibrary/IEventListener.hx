package sandbox.resourcelibrary;

@:native("Sandbox.ResourceLibrary.IEventListener")
extern class IEventListener {
    /** Called when the source file of a known resource has been externally modified on disk */
    function OnExternalChanges(resource:sandbox.GameResource):Void;
    /** Called when the source file of a known resource has been externally modified on disk and after it has been fully loaded (after post load is called) */
    function OnExternalChangesPostLoad(resource:sandbox.GameResource):Void;
    /** Called when a new resource has been registered */
    function OnRegister(resource:sandbox.GameResource):Void;
    /** Called when a resource has been saved */
    function OnSave(resource:sandbox.GameResource):Void;
    /** Called when a previously known resource has been unregistered */
    function OnUnregister(resource:sandbox.GameResource):Void;
}
