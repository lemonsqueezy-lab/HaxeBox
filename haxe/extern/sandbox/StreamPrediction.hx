package sandbox;

@:native("Sandbox.StreamPrediction")
final extern class StreamPrediction {
    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var BroadcasterId(default,set):String;

    private inline function set_BroadcasterId(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterId = {1}", this, __value);
    }

    var BroadcasterLogin(default,set):String;

    private inline function set_BroadcasterLogin(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterLogin = {1}", this, __value);
    }

    var BroadcasterName(default,set):String;

    private inline function set_BroadcasterName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.BroadcasterName = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var WinningOutcomeId(default,set):String;

    private inline function set_WinningOutcomeId(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.WinningOutcomeId = {1}", this, __value);
    }

    var PredictionWindow(default,set):Int;

    private inline function set_PredictionWindow(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.PredictionWindow = {1}", this, __value);
    }

    var Status(default,set):String;

    private inline function set_Status(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

    var CreatedAt(default,set):system.DateTimeOffset;

    private inline function set_CreatedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.CreatedAt = {1}", this, __value);
    }

    var EndedAt(default,set):system.DateTimeOffset;

    private inline function set_EndedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.EndedAt = {1}", this, __value);
    }

    var LockedAt(default,set):system.DateTimeOffset;

    private inline function set_LockedAt(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.LockedAt = {1}", this, __value);
    }

    var Outcomes(default,set):Array<sandbox.streamprediction.Outcome>;

    private inline function set_Outcomes(value:Array<sandbox.streamprediction.Outcome>):Array<sandbox.streamprediction.Outcome> {
        var __value:Array<sandbox.streamprediction.Outcome> = cast value;
        return untyped __cs__("{0}.Outcomes = {1}", this, __value);
    }

    /** Cancel this prediction */
    function Cancel():system.threading.tasks.Task1<sandbox.StreamPrediction>;
    /** Lock this prediction */
    function Lock():system.threading.tasks.Task1<sandbox.StreamPrediction>;
    /** Resolve this prediction and choose winning outcome to pay out channel points */
    function Resolve():system.threading.tasks.Task1<sandbox.StreamPrediction>;
}
