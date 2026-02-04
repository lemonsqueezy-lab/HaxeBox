package sandbox.services;

@:native("Sandbox.Services.VideoUploadResult")
final extern class VideoUploadResult {
    var Status(default,set):String;

    private inline function set_Status(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

}
