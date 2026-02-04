package sandbox;

@:native("Sandbox.StreamChannel")
final extern class StreamChannel {
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

    var Language(default,set):String;

    private inline function set_Language(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Language = {1}", this, __value);
    }

    var GameId(default,set):String;

    private inline function set_GameId(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.GameId = {1}", this, __value);
    }

    var GameName(default,set):String;

    private inline function set_GameName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.GameName = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Delay(default,set):Int;

    private inline function set_Delay(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Delay = {1}", this, __value);
    }

}
