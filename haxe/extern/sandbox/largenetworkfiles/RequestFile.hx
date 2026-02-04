package sandbox.largenetworkfiles;

@:native("Sandbox.LargeNetworkFiles.RequestFile")
final extern class RequestFile {
    function new(filename:String):Void;
    var filename(default,set):String;

    private inline function set_filename(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.filename = {1}", this, __value);
    }

    function Deconstruct(filename:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.largenetworkfiles.RequestFile):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
