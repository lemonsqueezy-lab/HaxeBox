package sandbox.services.packagereviewstats;

@:native("Sandbox.Services.PackageReviewStats.Group")
final extern class Group {
    var Rating(default,set):Int;

    private inline function set_Rating(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Rating = {1}", this, __value);
    }

    var Total(default,set):haxe.Int64;

    private inline function set_Total(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Total = {1}", this, __value);
    }

}
