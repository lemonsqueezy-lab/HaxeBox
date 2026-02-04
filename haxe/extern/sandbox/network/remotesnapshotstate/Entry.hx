package sandbox.network.remotesnapshotstate;

@:native("Sandbox.Network.RemoteSnapshotState.Entry")
final extern class Entry {
    function new(SnapshotId:Int, Data:Array<Int>, Hash:system.UInt64):Void;
    var SnapshotId(default,set):Int;

    private inline function set_SnapshotId(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.SnapshotId = {1}", this, __value);
    }

    var Data(default,set):Array<Int>;

    private inline function set_Data(value:Array<Int>):Array<Int> {
        var __value:Array<Int> = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

    var Hash(default,set):system.UInt64;

    private inline function set_Hash(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Hash = {1}", this, __value);
    }

    function Deconstruct(SnapshotId:Int, Data:Array<Int>, Hash:system.UInt64):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.network.remotesnapshotstate.Entry):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
