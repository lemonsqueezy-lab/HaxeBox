package sandbox.services;

@:native("Sandbox.Services.PackageFavouriteResult")
final extern class PackageFavouriteResult {
    function new(Success:Bool, State:Bool, Total:Int):Void;
    var Success(default,set):Bool;

    private inline function set_Success(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Success = {1}", this, __value);
    }

    var State(default,set):Bool;

    private inline function set_State(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.State = {1}", this, __value);
    }

    var Total(default,set):Int;

    private inline function set_Total(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Total = {1}", this, __value);
    }

    function Deconstruct(Success:Bool, State:Bool, Total:Int):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.services.PackageFavouriteResult):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
