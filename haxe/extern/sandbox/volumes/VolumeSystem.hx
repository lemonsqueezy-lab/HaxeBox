package sandbox.volumes;

/** A base GameObjectSystem for handling of IVolume components. You can use this to find volume components by position. */
@:native("Sandbox.Volumes.VolumeSystem")
final extern class VolumeSystem {
    function new(scene:sandbox.Scene):Void;
    var Scene(default,never):sandbox.Scene;
    var Id(default,never):system.Guid;
    /** Find all volumes of this type, at this point */
    function FindAll<T>(position:Vector3):system.collections.generic.IEnumerable<T>;
    /** Find a volume of this type, at this point. Will return null if none. */
    function FindSingle<T>(position:Vector3):T;
}
