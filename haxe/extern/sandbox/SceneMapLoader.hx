package sandbox;

@:native("Sandbox.SceneMapLoader")
extern class SceneMapLoader {
    function new(world:sandbox.SceneWorld, physics:sandbox.PhysicsWorld, origin:Vector3):Void;
    var World(default,never):sandbox.SceneWorld;
    var PhysicsWorld(default,never):sandbox.PhysicsWorld;
    var WorldOrigin(default,never):Vector3;
    @:protected
    var SceneObjects(null,never):system.collections.generic.List<sandbox.SceneObject>;
    @:protected function CreateCombinedLightProbeVolume(kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreateLightProbeVolume(kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreateModel(kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreateObject(data:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreatePointWorldText(kv:sandbox.maploader.ObjectEntry):Void;
}
