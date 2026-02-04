package sandbox;

@:native("Sandbox.StreamChatMessage")
final extern class StreamChatMessage {
    var Channel(default,set):String;

    private inline function set_Channel(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Channel = {1}", this, __value);
    }

    var DisplayName(default,set):String;

    private inline function set_DisplayName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DisplayName = {1}", this, __value);
    }

    var Message(default,set):String;

    private inline function set_Message(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Message = {1}", this, __value);
    }

    var Username(default,set):String;

    private inline function set_Username(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Username = {1}", this, __value);
    }

    var Color(default,set):String;

    private inline function set_Color(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    var Badges(default,set):Array<String>;

    private inline function set_Badges(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Badges = {1}", this, __value);
    }

}
