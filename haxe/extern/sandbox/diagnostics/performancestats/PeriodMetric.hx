package sandbox.diagnostics.performancestats;

@:native("Sandbox.Diagnostics.PerformanceStats.PeriodMetric")
final extern class PeriodMetric {
    function new(Min:Single, Max:Single, Avg:Single, Calls:Int):Void;
    var Min(default,set):Single;

    private inline function set_Min(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    var Max(default,set):Single;

    private inline function set_Max(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    var Avg(default,set):Single;

    private inline function set_Avg(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Avg = {1}", this, __value);
    }

    var Calls(default,set):Int;

    private inline function set_Calls(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Calls = {1}", this, __value);
    }

    function Deconstruct(Min:Single, Max:Single, Avg:Single, Calls:Int):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.diagnostics.performancestats.PeriodMetric):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
