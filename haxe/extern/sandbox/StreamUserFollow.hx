package sandbox;

@:native("Sandbox.StreamUserFollow")
final extern class StreamUserFollow {
    var UserId(default,set):String;

    private inline function set_UserId(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.UserId = {1}", this, __value);
    }

    var Username(default,set):String;

    private inline function set_Username(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Username = {1}", this, __value);
    }

    var DisplayName(default,set):String;

    private inline function set_DisplayName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DisplayName = {1}", this, __value);
    }

    var CreatedAt(default,set):system.DateTimeOffset;

    private inline function set_CreatedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.CreatedAt = {1}", this, __value);
    }

}
