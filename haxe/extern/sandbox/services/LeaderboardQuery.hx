package sandbox.services;

@:native("Sandbox.Services.LeaderboardQuery")
final extern class LeaderboardQuery {
    function new():Void;
    var PackageIdent(default,set):String;

    private inline function set_PackageIdent(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PackageIdent = {1}", this, __value);
    }

    var Stat(default,set):String;

    private inline function set_Stat(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Stat = {1}", this, __value);
    }

    var Aggregation(default,set):sandbox.services.leaderboardquery.AggregationType;

    private inline function set_Aggregation(value:sandbox.services.leaderboardquery.AggregationType):sandbox.services.leaderboardquery.AggregationType {
        var __value:sandbox.services.leaderboardquery.AggregationType = cast value;
        return untyped __cs__("{0}.Aggregation = {1}", this, __value);
    }

    var SortOrder(default,set):sandbox.services.leaderboardquery.SortingType;

    private inline function set_SortOrder(value:sandbox.services.leaderboardquery.SortingType):sandbox.services.leaderboardquery.SortingType {
        var __value:sandbox.services.leaderboardquery.SortingType = cast value;
        return untyped __cs__("{0}.SortOrder = {1}", this, __value);
    }

    var DateFilter(default,set):sandbox.services.leaderboardquery.DateType;

    private inline function set_DateFilter(value:sandbox.services.leaderboardquery.DateType):sandbox.services.leaderboardquery.DateType {
        var __value:sandbox.services.leaderboardquery.DateType = cast value;
        return untyped __cs__("{0}.DateFilter = {1}", this, __value);
    }

    var Date(default,set):Null<system.DateTimeOffset>;

    private inline function set_Date(value:Null<system.DateTimeOffset>):Null<system.DateTimeOffset> {
        var __value:Null<system.DateTimeOffset> = cast value;
        return untyped __cs__("{0}.Date = {1}", this, __value);
    }

    var CenterSteamId(default,set):haxe.Int64;

    private inline function set_CenterSteamId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.CenterSteamId = {1}", this, __value);
    }

    var Offset(default,set):haxe.Int64;

    private inline function set_Offset(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Offset = {1}", this, __value);
    }

    var Country(default,set):String;

    private inline function set_Country(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Country = {1}", this, __value);
    }

    var Count(default,set):Int;

    private inline function set_Count(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Count = {1}", this, __value);
    }

    var SteamId(default,set):haxe.Int64;

    private inline function set_SteamId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.SteamId = {1}", this, __value);
    }

    var Friends(default,set):Bool;

    private inline function set_Friends(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Friends = {1}", this, __value);
    }

    var Include(default,set):String;

    private inline function set_Include(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Include = {1}", this, __value);
    }

    var IncludeQuery(default,set):Bool;

    private inline function set_IncludeQuery(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IncludeQuery = {1}", this, __value);
    }

}
