package sandbox.services;

@:native("Sandbox.Services.PublishManifest")
final extern class PublishManifest {
    var Config(default,set):sandbox.services.ManifestConfig;

    private inline function set_Config(value:sandbox.services.ManifestConfig):sandbox.services.ManifestConfig {
        var __value:sandbox.services.ManifestConfig = cast value;
        return untyped __cs__("{0}.Config = {1}", this, __value);
    }

    var Assets(default,set):Array<sandbox.services.ManifestFile>;

    private inline function set_Assets(value:Array<sandbox.services.ManifestFile>):Array<sandbox.services.ManifestFile> {
        var __value:Array<sandbox.services.ManifestFile> = cast value;
        return untyped __cs__("{0}.Assets = {1}", this, __value);
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

    var Publish(default,set):Bool;

    private inline function set_Publish(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Publish = {1}", this, __value);
    }

    var EngineApi(default,set):Int;

    private inline function set_EngineApi(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.EngineApi = {1}", this, __value);
    }

    var Meta(default,set):String;

    private inline function set_Meta(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Meta = {1}", this, __value);
    }

}
