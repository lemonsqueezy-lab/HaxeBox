package sandbox;

/** Describes a curve, which can have multiple key frames. */
@:native("Sandbox.Curve")
final extern class Curve {
    overload function new():Void;
    overload function new(frames:Array<sandbox.curve.Frame>):Void;
    overload function new(frames:system.collections.generic.IEnumerable<sandbox.curve.Frame>):Void;
    overload function new(frames:system.collections.immutable.ImmutableArray<sandbox.curve.Frame>):Void;
    /** The range of this curve. This affects looping. */
    var TimeRange(default,set):Vector2;

    private inline function set_TimeRange(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.TimeRange = {1}", this, __value);
    }

    /** The value range. This should affect nothing but what it looks like in the editor. */
    var ValueRange(default,set):Vector2;

    private inline function set_ValueRange(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.ValueRange = {1}", this, __value);
    }

    /** Amount of key frames or points on the curve. */
    var Length(default,never):Int;
    var Item(default,set):sandbox.curve.Frame;

    private inline function set_Item(value:sandbox.curve.Frame):sandbox.curve.Frame {
        var __value:sandbox.curve.Frame = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    var Frames(default,set):system.collections.immutable.ImmutableArray<sandbox.curve.Frame>;

    private inline function set_Frames(value:system.collections.immutable.ImmutableArray<sandbox.curve.Frame>):system.collections.immutable.ImmutableArray<sandbox.curve.Frame> {
        var __value:system.collections.immutable.ImmutableArray<sandbox.curve.Frame> = cast value;
        return untyped __cs__("{0}.Frames = {1}", this, __value);
    }

    static var Linear(default,never):sandbox.Curve;
    static var Ease(default,never):sandbox.Curve;
    static var EaseIn(default,never):sandbox.Curve;
    static var EaseOut(default,never):sandbox.Curve;
    function AddOrReplacePoint(keyframe:sandbox.curve.Frame):Bool;
    /** Add a new keyframe at given position to this curve. */
    overload function AddPoint(keyframe:sandbox.curve.Frame):Int;
    overload function AddPoint(x:Single, y:Single):Int;
    /** Returns the value on the curve at given time position. */
    overload function Evaluate(time:Single):Single;
    overload function Evaluate(time:Single, angles:Bool):Single;
    /** Like evaluate but takes a normalized time between 0 and 1 and returns a normalized value between 0 and 1 */
    overload function EvaluateDelta(time:Single):Single;
    overload function EvaluateDelta(time:Single, angles:Bool):Single;
    /** If the curve is broken in some way, we can fix it here. Ensures correct time and value ranges, and that the curve has at least one point. */
    function Fix():Void;
    /** Remove all of the frames at the current time */
    function RemoveAtTime(time:Single, within:Single):Void;
    /** Make a copy of this curve that is reversed (If input eases from 0 to 1 then output will ease from 1 to 0) */
    function Reverse():sandbox.Curve;
    /** Make sure we're all sorted by time */
    function Sort():Void;
    function UpdateTimeRange(newRange:Vector2, retainTimes:Bool):Void;
    function UpdateValueRange(newRange:Vector2, retainValues:Bool):Void;
    /** Make a copy of this curve with changed keyframes */
    overload function WithFrames(frames:system.collections.generic.IEnumerable<sandbox.curve.Frame>):sandbox.Curve;
    overload function WithFrames(frames:system.collections.immutable.ImmutableArray<sandbox.curve.Frame>):sandbox.Curve;
    overload function WithFrames(frames:system.collections.immutable.ImmutableList<sandbox.curve.Frame>):sandbox.Curve;
}
