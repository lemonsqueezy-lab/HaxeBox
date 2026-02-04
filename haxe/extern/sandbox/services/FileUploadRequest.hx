package sandbox.services;

@:native("Sandbox.Services.FileUploadRequest")
final extern class FileUploadRequest {
    var Package(default,set):String;

    private inline function set_Package(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Package = {1}", this, __value);
    }

    var Contents(default,set):String;

    private inline function set_Contents(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Contents = {1}", this, __value);
    }

    var Blob(default,set):String;

    private inline function set_Blob(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Blob = {1}", this, __value);
    }

    var Path(default,set):String;

    private inline function set_Path(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Path = {1}", this, __value);
    }

    var Crc(default,set):String;

    private inline function set_Crc(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Crc = {1}", this, __value);
    }

    var Size(default,set):Int;

    private inline function set_Size(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

}
