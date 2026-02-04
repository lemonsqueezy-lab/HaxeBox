package sandbox;

/** Allows the creation of video content by encoding a sequence of frames. */
@:native("Sandbox.VideoWriter")
final extern class VideoWriter {
    var Width(default,never):Int;
    var Height(default,never):Int;
    /** Add a frame of data to be encoded. Timestamp is in microseconds. If a timestamp is not specified, it will use an incremented frame count as the timestamp. */
    overload function AddFrame(bitmap:sandbox.Bitmap, timestamp:Null<system.TimeSpan>):Bool;
    overload function AddFrame(data:system.ReadOnlySpan<Int>, timestamp:Null<system.TimeSpan>):Bool;
    /** Dispose this recorder, the encoder will be flushed and video finalized. */
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Finish creating this video. The encoder will be flushed and video finalized. */
    function FinishAsync():system.threading.tasks.Task;
}
