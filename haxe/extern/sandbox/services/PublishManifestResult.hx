package sandbox.services;

@:native("Sandbox.Services.PublishManifestResult")
final extern class PublishManifestResult {
    var Status(default,set):String;

    private inline function set_Status(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

    var Files(default,set):Array<String>;

    private inline function set_Files(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Files = {1}", this, __value);
    }

    var VersionId(default,set):haxe.Int64;

    private inline function set_VersionId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.VersionId = {1}", this, __value);
    }

}
