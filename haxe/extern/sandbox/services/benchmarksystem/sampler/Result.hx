package sandbox.services.benchmarksystem.sampler;

@:native("Sandbox.Services.BenchmarkSystem.Sampler.Result")
final extern class Result {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Min(default,set):Float;

    private inline function set_Min(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    var Max(default,set):Float;

    private inline function set_Max(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    var Avg(default,set):Float;

    private inline function set_Avg(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Avg = {1}", this, __value);
    }

    var Sum(default,set):Float;

    private inline function set_Sum(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Sum = {1}", this, __value);
    }

    /** The value below which 5% of the samples fall (the 5th percentile). */
    var P5(default,set):Float;

    private inline function set_P5(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.P5 = {1}", this, __value);
    }

    /** The value below which 95% of the samples fall (the 95th percentile). */
    var P95(default,set):Float;

    private inline function set_P95(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.P95 = {1}", this, __value);
    }

    /** The value below which 99% of the samples fall (the 99th percentile). */
    var P99(default,set):Float;

    private inline function set_P99(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.P99 = {1}", this, __value);
    }

    /** The value below which 99.9% of the samples fall (the 99.9th percentile). */
    var P99_9(default,set):Float;

    private inline function set_P99_9(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.P99_9 = {1}", this, __value);
    }

    /** This is the sum of all samples that exceeded the stuttering threshold. May not be very useful for non time based samples. */
    var Stuttering(default,set):Float;

    private inline function set_Stuttering(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Stuttering = {1}", this, __value);
    }

    var Count(default,set):Float;

    private inline function set_Count(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

}
