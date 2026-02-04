package sandbox.services;

@:native("Sandbox.Services.FindPackageQuery")
final extern class FindPackageQuery {
    function new():Void;
    var Type(default,set):String;

    private inline function set_Type(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Sort(default,set):sandbox.services.findpackagequery.SortMode;

    private inline function set_Sort(value:sandbox.services.findpackagequery.SortMode):sandbox.services.findpackagequery.SortMode {
        var __value:sandbox.services.findpackagequery.SortMode = cast value;
        return untyped __cs__("{0}.Sort = {1}", this, __value);
    }

    var SteamId(default,set):haxe.Int64;

    private inline function set_SteamId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.SteamId = {1}", this, __value);
    }

    var FavouritesSteamId(default,set):haxe.Int64;

    private inline function set_FavouritesSteamId(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.FavouritesSteamId = {1}", this, __value);
    }

    var InCollection(default,set):String;

    private inline function set_InCollection(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.InCollection = {1}", this, __value);
    }

    var GetTotalCount(default,set):Bool;

    private inline function set_GetTotalCount(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.GetTotalCount = {1}", this, __value);
    }

    var GetFacets(default,set):Bool;

    private inline function set_GetFacets(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.GetFacets = {1}", this, __value);
    }

    var PrimaryAsset(default,set):String;

    private inline function set_PrimaryAsset(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PrimaryAsset = {1}", this, __value);
    }

    var SearchString(default,set):String;

    private inline function set_SearchString(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.SearchString = {1}", this, __value);
    }

    var WithReference(default,set):haxe.Int64;

    private inline function set_WithReference(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.WithReference = {1}", this, __value);
    }

    var Org(default,set):String;

    private inline function set_Org(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Org = {1}", this, __value);
    }

    var WithTag(default,set):system.collections.generic.List<String>;

    private inline function set_WithTag(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.WithTag = {1}", this, __value);
    }

    var InContest(default,set):String;

    private inline function set_InContest(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.InContest = {1}", this, __value);
    }

    var ForGame(default,set):String;

    private inline function set_ForGame(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ForGame = {1}", this, __value);
    }

    var OpenOrgs(default,set):Array<haxe.Int64>;

    private inline function set_OpenOrgs(value:Array<haxe.Int64>):Array<haxe.Int64> {
        var __value:Array<haxe.Int64> = cast value;
        return untyped __cs__("{0}.OpenOrgs = {1}", this, __value);
    }

    var TargetPackage(default,set):String;

    private inline function set_TargetPackage(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.TargetPackage = {1}", this, __value);
    }

    var Unplayed(default,set):Bool;

    private inline function set_Unplayed(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Unplayed = {1}", this, __value);
    }

    var Facets(default,set):system.collections.generic.Dictionary<String,String>;

    private inline function set_Facets(value:system.collections.generic.Dictionary<String,String>):system.collections.generic.Dictionary<String,String> {
        var __value:system.collections.generic.Dictionary<String,String> = cast value;
        return untyped __cs__("{0}.Facets = {1}", this, __value);
    }

    static function Parse(query:String):sandbox.services.FindPackageQuery;
}
