package sandbox;

@:native("Sandbox.LogEvent")
final extern class LogEvent {
    var Level(default,set):sandbox.LogLevel;

    private inline function set_Level(value:sandbox.LogLevel):sandbox.LogLevel {
        var __value:sandbox.LogLevel = cast value;
        return untyped __cs__("{0}.Level = {1}", this, __value);
    }

    var Logger(default,set):String;

    private inline function set_Logger(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Logger = {1}", this, __value);
    }

    var Message(default,set):String;

    private inline function set_Message(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Message = {1}", this, __value);
    }

    var Exception(default,set):system.Exception;

    private inline function set_Exception(value:system.Exception):system.Exception {
        var __value:system.Exception = cast value;
        return untyped __cs__("{0}.Exception = {1}", this, __value);
    }

    var HtmlMessage(default,set):String;

    private inline function set_HtmlMessage(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.HtmlMessage = {1}", this, __value);
    }

    var Stack(default,set):String;

    private inline function set_Stack(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Stack = {1}", this, __value);
    }

    var Time(default,set):system.DateTime;

    private inline function set_Time(value:system.DateTime):system.DateTime {
        var __value:system.DateTime = cast value;
        return untyped __cs__("{0}.Time = {1}", this, __value);
    }

    var Arguments(default,set):Array<cs.system.Object>;

    private inline function set_Arguments(value:Array<cs.system.Object>):Array<cs.system.Object> {
        var __value:Array<cs.system.Object> = cast value;
        return untyped __cs__("{0}.Arguments = {1}", this, __value);
    }

    var Repeats(default,set):Int;

    private inline function set_Repeats(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Repeats = {1}", this, __value);
    }

    var IsDiagnostic(default,set):Bool;

    private inline function set_IsDiagnostic(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsDiagnostic = {1}", this, __value);
    }

}
