package sandbox.network.snapshotmsg;

@:native("Sandbox.Network.SnapshotMsg.GameObjectSystemData")
final extern class GameObjectSystemData {
    var SnapshotData(default,set):Array<Int>;

    private inline function set_SnapshotData(value:Array<Int>):Array<Int> {
        var __value:Array<Int> = cast value;
        return untyped __cs__("{0}.SnapshotData = {1}", this, __value);
    }

    var TableData(default,set):Array<Int>;

    private inline function set_TableData(value:Array<Int>):Array<Int> {
        var __value:Array<Int> = cast value;
        return untyped __cs__("{0}.TableData = {1}", this, __value);
    }

    var Type(default,set):Int;

    private inline function set_Type(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Id(default,set):system.Guid;

    private inline function set_Id(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

}
