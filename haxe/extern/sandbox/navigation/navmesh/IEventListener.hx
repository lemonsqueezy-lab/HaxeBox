package sandbox.navigation.navmesh;

/** Implement this interface to receive navmesh editor events. */
@:native("Sandbox.Navigation.NavMesh.IEventListener")
extern class IEventListener {
    /** Called when an area definition has changed or loaded/created. */
    function OnAreaDefinitionChanged():Void;
}
