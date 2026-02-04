package sandbox.network;

@:native("Sandbox.Network.NetworkFile")
final extern class NetworkFile {
    function new(Name:String, Content:Array<Int>):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Content(default,set):Array<Int>;

    private inline function set_Content(value:Array<Int>):Array<Int> {
        var __value:Array<Int> = cast value;
        return untyped __cs__("{0}.Content = {1}", this, __value);
    }

    function Deconstruct(Name:String, Content:Array<Int>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.network.NetworkFile):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
