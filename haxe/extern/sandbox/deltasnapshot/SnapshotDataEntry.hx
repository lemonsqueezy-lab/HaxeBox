package sandbox.deltasnapshot;

@:native("DeltaSnapshot.SnapshotDataEntry")
final extern class SnapshotDataEntry {
    var LocalState(default,set):sandbox.network.localsnapshotstate.Entry;

    private inline function set_LocalState(value:sandbox.network.localsnapshotstate.Entry):sandbox.network.localsnapshotstate.Entry {
        var __value:sandbox.network.localsnapshotstate.Entry = cast value;
        return untyped __cs__("{0}.LocalState = {1}", this, __value);
    }

    var Connections(default,set):system.collections.generic.HashSet<system.Guid>;

    private inline function set_Connections(value:system.collections.generic.HashSet<system.Guid>):system.collections.generic.HashSet<system.Guid> {
        var __value:system.collections.generic.HashSet<system.Guid> = cast value;
        return untyped __cs__("{0}.Connections = {1}", this, __value);
    }

    var Slot(default,set):Int;

    private inline function set_Slot(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Slot = {1}", this, __value);
    }

    var Value(default,set):Array<Int>;

    private inline function set_Value(value:Array<Int>):Array<Int> {
        var __value:Array<Int> = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    var Hash(default,set):system.UInt64;

    private inline function set_Hash(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Hash = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:deltasnapshot.SnapshotDataEntry):Bool;
    function GetHashCode():Int;
}
