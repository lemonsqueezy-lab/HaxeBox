package sandbox.vector3;

/** Everything you need to smooth damp a Vector3. Just call Update every frame. */
@:native("Vector3.SmoothDamped")
final extern class SmoothDamped {
    /** Everything you need to smooth damp a Vector3. Just call Update every frame. */
    function new(Current:Vector3, Target:Vector3, SmoothTime:Single):Void;
    var Current(default,set):Vector3;

    private inline function set_Current(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Current = {1}", this, __value);
    }

    var Target(default,set):Vector3;

    private inline function set_Target(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Target = {1}", this, __value);
    }

    var SmoothTime(default,set):Single;

    private inline function set_SmoothTime(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.SmoothTime = {1}", this, __value);
    }

    var Velocity(default,set):Vector3;

    private inline function set_Velocity(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Velocity = {1}", this, __value);
    }

    function Deconstruct(Current:Vector3, Target:Vector3, SmoothTime:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:vector3.SmoothDamped):Bool;
    function GetHashCode():Int;
    function ToString():String;
    function Update(timeDelta:Single):Void;
}
