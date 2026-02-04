package sandbox.menu;

@:native("Sandbox.Menu.LoadingProgress")
final extern class LoadingProgress {
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    /** A value between 0 and 1, to show a progress bar */
    var Fraction(default,set):Float;

    private inline function set_Fraction(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Fraction = {1}", this, __value);
    }

    /** The current transfer rate in Megabits per second. 0 is none. */
    var Mbps(default,set):Float;

    private inline function set_Mbps(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Mbps = {1}", this, __value);
    }

    /** Delta multipled by 100 */
    var Percent(default,never):Float;
    /** The total size of what we're trying to download */
    var TotalSize(default,set):Float;

    private inline function set_TotalSize(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.TotalSize = {1}", this, __value);
    }

    function CalculateETA():system.TimeSpan;
}
