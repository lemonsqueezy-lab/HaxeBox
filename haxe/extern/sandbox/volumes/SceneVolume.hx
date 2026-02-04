package sandbox.volumes;

/** A generic way to represent volumes in a scene. If we all end up using this instead of defining our own version in everything, we can improve this and improve everything at the same time. */
@:native("Sandbox.Volumes.SceneVolume")
final extern class SceneVolume {
    function new():Void;
    var Type(default,set):sandbox.volumes.scenevolume.VolumeTypes;

    private inline function set_Type(value:sandbox.volumes.scenevolume.VolumeTypes):sandbox.volumes.scenevolume.VolumeTypes {
        var __value:sandbox.volumes.scenevolume.VolumeTypes = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Sphere(default,set):sandbox.Sphere;

    private inline function set_Sphere(value:sandbox.Sphere):sandbox.Sphere {
        var __value:sandbox.Sphere = cast value;
        return untyped __cs__("{0}.Sphere = {1}", this, __value);
    }

    var Box(default,set):BBox;

    private inline function set_Box(value:BBox):BBox {
        var __value:BBox = cast value;
        return untyped __cs__("{0}.Box = {1}", this, __value);
    }

    var Capsule(default,set):Capsule;

    private inline function set_Capsule(value:Capsule):Capsule {
        var __value:Capsule = cast value;
        return untyped __cs__("{0}.Capsule = {1}", this, __value);
    }

    /** Draws an editable sphere/box gizmo, for adjusting the volume */
    function DrawGizmos(withControls:Bool):Void;
    /** Returns the axis-aligned bounding box that encloses the current volume. */
    function GetBounds():BBox;
    function GetEdgeDistance(worldTransform:Transform, worldPosition:Vector3):Single;
    /** Get the actual amount of volume in this shape. This is useful if you want to make a system where you prioritize by volume size. Don't forget to multiply by scale! */
    function GetVolume():Single;
    overload function Test(position:Vector3):Bool;
    overload function Test(volumeTransform:Transform, position:Vector3):Bool;
}
