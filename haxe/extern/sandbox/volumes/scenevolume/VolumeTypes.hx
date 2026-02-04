package sandbox.volumes.scenevolume;

@:native("Sandbox.Volumes.SceneVolume.VolumeTypes")
extern enum abstract VolumeTypes(Int) {
    var Sphere;
    var Box;
    var Capsule;
    var Infinite;
}
