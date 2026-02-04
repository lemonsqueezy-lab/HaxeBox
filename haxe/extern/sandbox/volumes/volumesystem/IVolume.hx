package sandbox.volumes.volumesystem;

@:native("Sandbox.Volumes.VolumeSystem.IVolume")
extern class IVolume {
    function GetVolume():sandbox.volumes.SceneVolume;
    overload function Test(worldBBox:BBox):Bool;
    overload function Test(worldPosition:Vector3):Bool;
    overload function Test(worldSphere:sandbox.Sphere):Bool;
}
