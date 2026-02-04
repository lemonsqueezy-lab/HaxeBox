package sandbox.services;

@:native("Sandbox.Services.ServiceToken")
final extern class ServiceToken {
    var Id(default,set):String;

    private inline function set_Id(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Token(default,set):String;

    private inline function set_Token(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Token = {1}", this, __value);
    }

    var Type(default,set):String;

    private inline function set_Type(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

}
