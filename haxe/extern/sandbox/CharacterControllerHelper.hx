package sandbox;

@:native("Sandbox.CharacterControllerHelper")
final extern class CharacterControllerHelper {
    function new(trace:sandbox.SceneTrace, position:Vector3, velocity:Vector3):Void;
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Velocity(default,set):Vector3;

    private inline function set_Velocity(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Velocity = {1}", this, __value);
    }

    var Bounce(default,set):Single;

    private inline function set_Bounce(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Bounce = {1}", this, __value);
    }

    var MaxStandableAngle(default,set):Single;

    private inline function set_MaxStandableAngle(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.MaxStandableAngle = {1}", this, __value);
    }

    var Trace(default,set):sandbox.SceneTrace;

    private inline function set_Trace(value:sandbox.SceneTrace):sandbox.SceneTrace {
        var __value:sandbox.SceneTrace = cast value;
        return untyped __cs__("{0}.Trace = {1}", this, __value);
    }

    /** Trace this from one position to another */
    function TraceFromTo(start:Vector3, end:Vector3):sandbox.SceneTraceResult;
    /** Move our position by this delta using trace. If we hit something we'll stop, we won't slide across it nicely like TryMove does. */
    function TraceMove(delta:Vector3):sandbox.SceneTraceResult;
    /** Try to move to the position. Will return the fraction of the desired velocity that we traveled. Position and Velocity will be what we recommend using. */
    function TryMove(timestep:Single):Single;
    /** Like TryMove but will also try to step up if it hits a wall */
    function TryMoveWithStep(timeDelta:Single, stepsize:Single):Single;
}
