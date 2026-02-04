package sandbox.modals;

@:native("Sandbox.Modals.ServerListConfig")
final extern class ServerListConfig {
    function new(game:String, map:String):Void;
    var GamePackageFilter(default,set):String;

    private inline function set_GamePackageFilter(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.GamePackageFilter = {1}", this, __value);
    }

    var MapPackageFilter(default,set):String;

    private inline function set_MapPackageFilter(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.MapPackageFilter = {1}", this, __value);
    }

}
