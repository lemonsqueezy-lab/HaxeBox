package sandbox.services;

@:native("Sandbox.Services.PackageRateResult")
final extern class PackageRateResult {
    function new(Success:Bool, VotesUp:Int, VotesDown:Int):Void;
    var Success(default,set):Bool;

    private inline function set_Success(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Success = {1}", this, __value);
    }

    var VotesUp(default,set):Int;

    private inline function set_VotesUp(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.VotesUp = {1}", this, __value);
    }

    var VotesDown(default,set):Int;

    private inline function set_VotesDown(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.VotesDown = {1}", this, __value);
    }

    function Deconstruct(Success:Bool, VotesUp:Int, VotesDown:Int):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.services.PackageRateResult):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
