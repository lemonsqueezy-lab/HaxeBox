package sandbox.services;

@:native("Sandbox.Services.VideoUploadRequest")
final extern class VideoUploadRequest {
    var Package(default,set):String;

    private inline function set_Package(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Package = {1}", this, __value);
    }

    var Tag(default,set):String;

    private inline function set_Tag(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Tag = {1}", this, __value);
    }

    var File(default,set):String;

    private inline function set_File(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.File = {1}", this, __value);
    }

    var Thumb(default,set):Bool;

    private inline function set_Thumb(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Thumb = {1}", this, __value);
    }

    var Hidden(default,set):Bool;

    private inline function set_Hidden(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Hidden = {1}", this, __value);
    }

}
