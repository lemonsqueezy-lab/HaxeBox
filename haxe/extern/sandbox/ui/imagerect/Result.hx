package sandbox.ui.imagerect;

@:native("Sandbox.UI.ImageRect.Result")
final extern class Result {
    function new(Rect:Vector4, IsCover:Bool):Void;
    var Rect(default,set):Vector4;

    private inline function set_Rect(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.Rect = {1}", this, __value);
    }

    var IsCover(default,set):Bool;

    private inline function set_IsCover(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsCover = {1}", this, __value);
    }

    function Deconstruct(Rect:Vector4, IsCover:Bool):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.ui.imagerect.Result):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
