package sandbox.color;

@:native("Color.Rgba16")
final extern class Rgba16 {
    function new(color:Color):Void;
    var r(default,set):system.Half;

    private inline function set_r(value:system.Half):system.Half {
        var __value:system.Half = cast value;
        return untyped __cs__("{0}.r = {1}", this, __value);
    }

    var g(default,set):system.Half;

    private inline function set_g(value:system.Half):system.Half {
        var __value:system.Half = cast value;
        return untyped __cs__("{0}.g = {1}", this, __value);
    }

    var b(default,set):system.Half;

    private inline function set_b(value:system.Half):system.Half {
        var __value:system.Half = cast value;
        return untyped __cs__("{0}.b = {1}", this, __value);
    }

    var a(default,set):system.Half;

    private inline function set_a(value:system.Half):system.Half {
        var __value:system.Half = cast value;
        return untyped __cs__("{0}.a = {1}", this, __value);
    }

    overload function Equals(o:color.Rgba16):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Convert this object to . */
    function ToColor():Color;
    function ToString():String;
}
