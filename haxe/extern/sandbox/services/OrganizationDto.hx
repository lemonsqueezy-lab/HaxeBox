package sandbox.services;

@:native("Sandbox.Services.OrganizationDto")
final extern class OrganizationDto {
    var Ident(default,set):String;

    private inline function set_Ident(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Ident = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Thumb(default,set):String;

    private inline function set_Thumb(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Thumb = {1}", this, __value);
    }

    var Twitter(default,set):String;

    private inline function set_Twitter(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Twitter = {1}", this, __value);
    }

    var WebUrl(default,set):String;

    private inline function set_WebUrl(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.WebUrl = {1}", this, __value);
    }

    var Discord(default,set):String;

    private inline function set_Discord(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Discord = {1}", this, __value);
    }

    function DevLink(append:String):String;
}
