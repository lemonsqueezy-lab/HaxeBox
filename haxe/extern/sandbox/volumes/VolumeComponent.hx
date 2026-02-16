package sandbox.volumes;

@:native("Sandbox.Volumes.VolumeComponent")
extern class VolumeComponent extends sandbox.Component {
    @:protected function new():Void;
    var SceneVolume(default,default):sandbox.volumes.SceneVolume;
    /** True if SceneVolume.Type == SceneVolume.VolumeTypes.Infinite */
    var IsInfinite(default,never):Bool;
    @:protected function DrawGizmos():Void;
    /** Calculates the shortest distance from the specified world position to the nearest edge of the scene volume. */
    function GetEdgeDistance(worldPosition:Vector3):Single;
}
