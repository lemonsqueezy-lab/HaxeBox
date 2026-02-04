package sandbox.ui.transitions;

@:native("Sandbox.UI.Transitions.Entry")
final extern class Entry {
    function new(property:String, startTime:Float, length:Float, target:Int, action:sandbox.ui.transitions.TransitionFunction, easingFunction:sandbox.utility.easing.Function):Void;
    var Property(default,set):String;

    private inline function set_Property(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Property = {1}", this, __value);
    }

    var StartTime(default,set):Float;

    private inline function set_StartTime(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.StartTime = {1}", this, __value);
    }

    var Length(default,set):Float;

    private inline function set_Length(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Length = {1}", this, __value);
    }

    var Target(default,set):Int;

    private inline function set_Target(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Target = {1}", this, __value);
    }

    var EasingFunction(default,set):sandbox.utility.easing.Function;

    private inline function set_EasingFunction(value:sandbox.utility.easing.Function):sandbox.utility.easing.Function {
        var __value:sandbox.utility.easing.Function = cast value;
        return untyped __cs__("{0}.EasingFunction = {1}", this, __value);
    }

    var IsKilled(default,set):Bool;

    private inline function set_IsKilled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsKilled = {1}", this, __value);
    }

    var Action(default,set):sandbox.ui.transitions.TransitionFunction;

    private inline function set_Action(value:sandbox.ui.transitions.TransitionFunction):sandbox.ui.transitions.TransitionFunction {
        var __value:sandbox.ui.transitions.TransitionFunction = cast value;
        return untyped __cs__("{0}.Action = {1}", this, __value);
    }

    function Ease(delta:Single):Single;
    function Invoke(style:sandbox.ui.Styles, delta:Single):Void;
    function ToString():String;
}
