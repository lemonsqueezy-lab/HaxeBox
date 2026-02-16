package sandbox;

@:native("Sandbox.SceneMapLoader")
extern class SceneMapLoader extends sandbox.MapLoader {
    function new(world:sandbox.SceneWorld, physics:sandbox.PhysicsWorld, origin:Vector3):Void;
    @:protected function CreateCombinedLightProbeVolume(kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreateLightProbeVolume(kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreateModel(kv:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreateObject(data:sandbox.maploader.ObjectEntry):Void;
    @:protected function CreatePointWorldText(kv:sandbox.maploader.ObjectEntry):Void;
}
