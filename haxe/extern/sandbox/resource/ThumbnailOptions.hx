package sandbox.resource;

@:native("Sandbox.Resource.ThumbnailOptions")
final extern class ThumbnailOptions {
    var Width(default,set):Int;

    private inline function set_Width(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    var Height(default,set):Int;

    private inline function set_Height(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.resource.ThumbnailOptions):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
