package sandbox.package;

/** Statistics for user interactions with this package */
@:native("Sandbox.Package.PackageUsageStats")
final extern class PackageUsageStats {
    /** Total lifetime usage stats */
    var Total(default,set):sandbox.package.packageusagestats.Group;

    private inline function set_Total(value:sandbox.package.packageusagestats.Group):sandbox.package.packageusagestats.Group {
        var __value:sandbox.package.packageusagestats.Group = cast value;
        return untyped __cs__("{0}.Total = {1}", this, __value);
    }

    /** Usage for the last 3 days */
    var Month(default,set):sandbox.package.packageusagestats.Group;

    private inline function set_Month(value:sandbox.package.packageusagestats.Group):sandbox.package.packageusagestats.Group {
        var __value:sandbox.package.packageusagestats.Group = cast value;
        return untyped __cs__("{0}.Month = {1}", this, __value);
    }

    /** Usage for the last week */
    var Week(default,set):sandbox.package.packageusagestats.Group;

    private inline function set_Week(value:sandbox.package.packageusagestats.Group):sandbox.package.packageusagestats.Group {
        var __value:sandbox.package.packageusagestats.Group = cast value;
        return untyped __cs__("{0}.Week = {1}", this, __value);
    }

    /** Usage for the last 24 hours */
    var Day(default,set):sandbox.package.packageusagestats.Group;

    private inline function set_Day(value:sandbox.package.packageusagestats.Group):sandbox.package.packageusagestats.Group {
        var __value:sandbox.package.packageusagestats.Group = cast value;
        return untyped __cs__("{0}.Day = {1}", this, __value);
    }

    /** How many users are using it right now */
    var UsersNow(default,set):haxe.Int64;

    private inline function set_UsersNow(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.UsersNow = {1}", this, __value);
    }

    /** The trend is a number that represents whether it's been popular recently. Higher means more popular. */
    var Trend(default,set):Float;

    private inline function set_Trend(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Trend = {1}", this, __value);
    }

}
