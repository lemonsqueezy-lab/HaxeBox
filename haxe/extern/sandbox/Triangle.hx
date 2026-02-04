package sandbox;

@:native("Sandbox.Triangle")
final extern class Triangle {
    function new(a:Vector3, b:Vector3, c:Vector3):Void;
    var Perimeter(default,never):Single;
    var Area(default,never):Single;
    var IsRight(default,never):Bool;
    var Normal(default,never):Vector3;
    var A(default,set):Vector3;

    private inline function set_A(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.A = {1}", this, __value);
    }

    var B(default,set):Vector3;

    private inline function set_B(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.B = {1}", this, __value);
    }

    var C(default,set):Vector3;

    private inline function set_C(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.C = {1}", this, __value);
    }

    function ClosestPoint(P:Vector3):Vector3;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.Triangle):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
