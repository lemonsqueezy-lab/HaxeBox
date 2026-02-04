package sandbox.services;

@:native("Sandbox.Services.ManifestConfig")
final extern class ManifestConfig {
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Type(default,set):String;

    private inline function set_Type(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Org(default,set):String;

    private inline function set_Org(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Org = {1}", this, __value);
    }

    var Ident(default,set):String;

    private inline function set_Ident(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Ident = {1}", this, __value);
    }

    var Schema(default,set):Int;

    private inline function set_Schema(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Schema = {1}", this, __value);
    }

    var PackageReferences(default,set):system.collections.generic.List<String>;

    private inline function set_PackageReferences(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.PackageReferences = {1}", this, __value);
    }

    var EditorReferences(default,set):system.collections.generic.List<String>;

    private inline function set_EditorReferences(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.EditorReferences = {1}", this, __value);
    }

}
