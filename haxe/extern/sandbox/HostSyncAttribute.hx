package sandbox;

/** Automatically synchronize a property of a networked object from the host to other clients. Obsolete: 11/12/2024 */
@:native("Sandbox.HostSyncAttribute")
extern class HostSyncAttribute {
    function new():Void;
    /** Query this value for changes rather than counting on set being called. This is appropriate if the value returned by its getter can change without calling its setter. Obsoleted: 13/12/2024 */
    var Query(never,default):Bool;
    /** Flags that describe how this property is synchronized. */
    var Flags(default,default):sandbox.SyncFlags;
    var TypeId(default,never):cs.system.Object;
}
