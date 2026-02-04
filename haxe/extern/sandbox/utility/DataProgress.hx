package sandbox.utility;

/** Provides progress information for operations that process blocks of data, such as file uploads, downloads, or large data transfers. */
@:native("Sandbox.Utility.DataProgress")
final extern class DataProgress {
    /** The number of bytes processed so far. */
    var ProgressBytes(default,set):haxe.Int64;

    private inline function set_ProgressBytes(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.ProgressBytes = {1}", this, __value);
    }

    /** The total number of bytes to process. */
    var TotalBytes(default,set):haxe.Int64;

    private inline function set_TotalBytes(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.TotalBytes = {1}", this, __value);
    }

    /** The number of bytes processed since the last progress update. */
    var DeltaBytes(default,set):haxe.Int64;

    private inline function set_DeltaBytes(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.DeltaBytes = {1}", this, __value);
    }

    /** Progress as a fraction from 0.0 to 1.0. */
    var ProgressDelta(default,never):Single;
}
