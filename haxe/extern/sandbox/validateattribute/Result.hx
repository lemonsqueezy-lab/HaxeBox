package sandbox.validateattribute;

@:native("ValidateAttribute.Result")
final extern class Result {
    function new(Status:sandbox.LogLevel, Message:String, Success:Bool):Void;
    var Status(default,set):sandbox.LogLevel;

    private inline function set_Status(value:sandbox.LogLevel):sandbox.LogLevel {
        var __value:sandbox.LogLevel = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

    var Message(default,set):String;

    private inline function set_Message(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Message = {1}", this, __value);
    }

    var Success(default,set):Bool;

    private inline function set_Success(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Success = {1}", this, __value);
    }

    function Deconstruct(Status:sandbox.LogLevel, Message:String, Success:Bool):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:validateattribute.Result):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
