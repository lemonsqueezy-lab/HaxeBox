package sandbox.vector3;

/** Everything you need to create a springy Vector3 */
@:native("Vector3.SpringDamped")
final extern class SpringDamped {
    overload function new(current:Vector3, target:Vector3, frequency:Single, damping:Single):Void;
    overload function new(current:Vector3, target:Vector3, smoothTime:Single, frequency:Single, damping:Single):Void;
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

    var Frequency(default,set):Single;

    private inline function set_Frequency(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Frequency = {1}", this, __value);
    }

    var Damping(default,set):Single;

    private inline function set_Damping(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Damping = {1}", this, __value);
    }

    var Velocity(default,set):Vector3;

    private inline function set_Velocity(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Velocity = {1}", this, __value);
    }

    var SmoothTime(default,set):Single;

    private inline function set_SmoothTime(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.SmoothTime = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:vector3.SpringDamped):Bool;
    function GetHashCode():Int;
    function ToString():String;
    function Update(timeDelta:Single):Void;
}
