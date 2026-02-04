package sandbox.network;

@:native("Sandbox.Network.SnapshotMsg")
final extern class SnapshotMsg {
    var Time(default,set):Float;

    private inline function set_Time(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Time = {1}", this, __value);
    }

    var SceneData(default,set):String;

    private inline function set_SceneData(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.SceneData = {1}", this, __value);
    }

    var BlobData(default,set):Array<Int>;

    private inline function set_BlobData(value:Array<Int>):Array<Int> {
        var __value:Array<Int> = cast value;
        return untyped __cs__("{0}.BlobData = {1}", this, __value);
    }

    var NetworkObjects(default,set):system.collections.generic.List<cs.system.Object>;

    private inline function set_NetworkObjects(value:system.collections.generic.List<cs.system.Object>):system.collections.generic.List<cs.system.Object> {
        var __value:system.collections.generic.List<cs.system.Object> = cast value;
        return untyped __cs__("{0}.NetworkObjects = {1}", this, __value);
    }

    var GameObjectSystems(default,set):system.collections.generic.List<sandbox.network.snapshotmsg.GameObjectSystemData>;

    private inline function set_GameObjectSystems(value:system.collections.generic.List<sandbox.network.snapshotmsg.GameObjectSystemData>):system.collections.generic.List<sandbox.network.snapshotmsg.GameObjectSystemData> {
        var __value:system.collections.generic.List<sandbox.network.snapshotmsg.GameObjectSystemData> = cast value;
        return untyped __cs__("{0}.GameObjectSystems = {1}", this, __value);
    }

}
