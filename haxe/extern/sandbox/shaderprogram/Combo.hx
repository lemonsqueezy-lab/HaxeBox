package sandbox.shaderprogram;

@:native("Sandbox.ShaderProgram.Combo")
final extern class Combo {
    function new(Static:system.UInt64, Dynamic:system.UInt64):Void;
    var Static(default,set):system.UInt64;

    private inline function set_Static(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Static = {1}", this, __value);
    }

    var Dynamic(default,set):system.UInt64;

    private inline function set_Dynamic(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.Dynamic = {1}", this, __value);
    }

    function Deconstruct(Static:system.UInt64, Dynamic:system.UInt64):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.shaderprogram.Combo):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
