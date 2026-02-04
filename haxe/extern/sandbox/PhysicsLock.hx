package sandbox;

@:native("Sandbox.PhysicsLock")
final extern class PhysicsLock {
    function new():Void;
    var X(default,set):Bool;

    private inline function set_X(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.X = {1}", this, __value);
    }

    var Y(default,set):Bool;

    private inline function set_Y(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Y = {1}", this, __value);
    }

    var Z(default,set):Bool;

    private inline function set_Z(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Z = {1}", this, __value);
    }

    var Pitch(default,set):Bool;

    private inline function set_Pitch(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Pitch = {1}", this, __value);
    }

    var Yaw(default,set):Bool;

    private inline function set_Yaw(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Yaw = {1}", this, __value);
    }

    var Roll(default,set):Bool;

    private inline function set_Roll(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Roll = {1}", this, __value);
    }

}
