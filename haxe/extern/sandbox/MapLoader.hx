package sandbox;

@:native("Sandbox.MapLoader")
extern class MapLoader {
    function new(world:sandbox.SceneWorld, physics:sandbox.PhysicsWorld, origin:Vector3):Void;
    var World(default,never):sandbox.SceneWorld;
    var PhysicsWorld(default,never):sandbox.PhysicsWorld;
    var WorldOrigin(default,never):Vector3;
    @:protected
    var SceneObjects(null,never):system.collections.generic.List<sandbox.SceneObject>;
    /** Create an object from a serialized object entry */
    @:protected function CreateObject(kv:sandbox.maploader.ObjectEntry):Void;
}
