package sandbox.services;

@:native("Sandbox.Services.FileUploadResult")
final extern class FileUploadResult {
    var Status(default,set):String;

    private inline function set_Status(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

}
