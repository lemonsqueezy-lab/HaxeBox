package sandbox.menuutility.storage;

@:native("Sandbox.MenuUtility.Storage.FileEntry")
final extern class FileEntry {
    var Filename(default,set):String;

    private inline function set_Filename(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Filename = {1}", this, __value);
    }

    var Size(default,set):haxe.Int64;

    private inline function set_Size(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

    var Created(default,set):system.DateTime;

    private inline function set_Created(value:system.DateTime):system.DateTime {
        var __value:system.DateTime = cast value;
        return untyped __cs__("{0}.Created = {1}", this, __value);
    }

    var LastAccessed(default,set):system.DateTime;

    private inline function set_LastAccessed(value:system.DateTime):system.DateTime {
        var __value:system.DateTime = cast value;
        return untyped __cs__("{0}.LastAccessed = {1}", this, __value);
    }

}
