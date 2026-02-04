package sandbox.package.packageusagestats;

@:native("Sandbox.Package.PackageUsageStats.Group")
final extern class Group {
    /** Unique Users */
    var Users(default,set):haxe.Int64;

    private inline function set_Users(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Users = {1}", this, __value);
    }

    /** Total combined user-seconds */
    var Seconds(default,set):haxe.Int64;

    private inline function set_Seconds(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Seconds = {1}", this, __value);
    }

    /** Total combined user-seconds */
    var Sessions(default,set):haxe.Int64;

    private inline function set_Sessions(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Sessions = {1}", this, __value);
    }

}
