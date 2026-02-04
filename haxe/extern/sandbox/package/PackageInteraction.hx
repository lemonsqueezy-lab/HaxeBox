package sandbox.package;

@:native("Sandbox.Package.PackageInteraction")
final extern class PackageInteraction {
    var Favourite(default,set):Bool;

    private inline function set_Favourite(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Favourite = {1}", this, __value);
    }

    var FavouriteCreated(default,set):Null<system.DateTimeOffset>;

    private inline function set_FavouriteCreated(value:Null<system.DateTimeOffset>):Null<system.DateTimeOffset> {
        var __value:Null<system.DateTimeOffset> = cast value;
        return untyped __cs__("{0}.FavouriteCreated = {1}", this, __value);
    }

    var Rating(default,set):Null<Int>;

    private inline function set_Rating(value:Null<Int>):Null<Int> {
        var __value:Null<Int> = cast value;
        return untyped __cs__("{0}.Rating = {1}", this, __value);
    }

    var RatingCreated(default,set):Null<system.DateTimeOffset>;

    private inline function set_RatingCreated(value:Null<system.DateTimeOffset>):Null<system.DateTimeOffset> {
        var __value:Null<system.DateTimeOffset> = cast value;
        return untyped __cs__("{0}.RatingCreated = {1}", this, __value);
    }

    var Used(default,set):Bool;

    private inline function set_Used(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Used = {1}", this, __value);
    }

    var FirstUsed(default,set):Null<system.DateTimeOffset>;

    private inline function set_FirstUsed(value:Null<system.DateTimeOffset>):Null<system.DateTimeOffset> {
        var __value:Null<system.DateTimeOffset> = cast value;
        return untyped __cs__("{0}.FirstUsed = {1}", this, __value);
    }

    var LastUsed(default,set):Null<system.DateTimeOffset>;

    private inline function set_LastUsed(value:Null<system.DateTimeOffset>):Null<system.DateTimeOffset> {
        var __value:Null<system.DateTimeOffset> = cast value;
        return untyped __cs__("{0}.LastUsed = {1}", this, __value);
    }

    var Sessions(default,set):haxe.Int64;

    private inline function set_Sessions(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Sessions = {1}", this, __value);
    }

    var Seconds(default,set):haxe.Int64;

    private inline function set_Seconds(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Seconds = {1}", this, __value);
    }

}
