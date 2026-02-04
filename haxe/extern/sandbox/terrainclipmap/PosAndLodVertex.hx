package sandbox.terrainclipmap;

@:native("Sandbox.TerrainClipmap.PosAndLodVertex")
final extern class PosAndLodVertex {
    function new(position:Vector3):Void;
    var position(default,set):Vector3;

    private inline function set_position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.position = {1}", this, __value);
    }

}
