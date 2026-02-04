package sandbox.services;

@:native("Sandbox.Services.LoginResult")
final extern class LoginResult {
    var Id(default,set):haxe.Int64;

    private inline function set_Id(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Session(default,set):String;

    private inline function set_Session(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Session = {1}", this, __value);
    }

    var OwnerId(default,set):String;

    private inline function set_OwnerId(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.OwnerId = {1}", this, __value);
    }

    var MessagingEndpoint(default,set):String;

    private inline function set_MessagingEndpoint(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.MessagingEndpoint = {1}", this, __value);
    }

    var Links(default,set):Array<sandbox.services.ServiceType>;

    private inline function set_Links(value:Array<sandbox.services.ServiceType>):Array<sandbox.services.ServiceType> {
        var __value:Array<sandbox.services.ServiceType> = cast value;
        return untyped __cs__("{0}.Links = {1}", this, __value);
    }

    var Memberships(default,set):Array<sandbox.services.OrganizationDto>;

    private inline function set_Memberships(value:Array<sandbox.services.OrganizationDto>):Array<sandbox.services.OrganizationDto> {
        var __value:Array<sandbox.services.OrganizationDto> = cast value;
        return untyped __cs__("{0}.Memberships = {1}", this, __value);
    }

    var Favourites(default,set):Array<sandbox.services.PackageWrapMinimal>;

    private inline function set_Favourites(value:Array<sandbox.services.PackageWrapMinimal>):Array<sandbox.services.PackageWrapMinimal> {
        var __value:Array<sandbox.services.PackageWrapMinimal> = cast value;
        return untyped __cs__("{0}.Favourites = {1}", this, __value);
    }

    var LastSeen(default,set):system.DateTimeOffset;

    private inline function set_LastSeen(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.LastSeen = {1}", this, __value);
    }

    var FirstSeen(default,set):system.DateTimeOffset;

    private inline function set_FirstSeen(value:system.DateTimeOffset):system.DateTimeOffset {
        var __value:system.DateTimeOffset = cast value;
        return untyped __cs__("{0}.FirstSeen = {1}", this, __value);
    }

    var AvatarJson(default,set):String;

    private inline function set_AvatarJson(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.AvatarJson = {1}", this, __value);
    }

    var Player(default,set):sandbox.services.Player;

    private inline function set_Player(value:sandbox.services.Player):sandbox.services.Player {
        var __value:sandbox.services.Player = cast value;
        return untyped __cs__("{0}.Player = {1}", this, __value);
    }

    var Friends(default,set):Array<sandbox.services.Player>;

    private inline function set_Friends(value:Array<sandbox.services.Player>):Array<sandbox.services.Player> {
        var __value:Array<sandbox.services.Player> = cast value;
        return untyped __cs__("{0}.Friends = {1}", this, __value);
    }

}
