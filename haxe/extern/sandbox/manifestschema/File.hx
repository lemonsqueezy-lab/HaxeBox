package sandbox.manifestschema;

@:native("Sandbox.ManifestSchema.File")
final extern class File {
    var Url(default,set):String;

    private inline function set_Url(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Url = {1}", this, __value);
    }

    var Crc(default,set):String;

    private inline function set_Crc(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Crc = {1}", this, __value);
    }

    var Path(default,set):String;

    private inline function set_Path(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Path = {1}", this, __value);
    }

    var Size(default,set):haxe.Int64;

    private inline function set_Size(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

}
