package sandbox.ui;

/** A single parameter in a mixin definition. */
@:native("Sandbox.UI.MixinParameter")
final extern class MixinParameter {
    /** A single parameter in a mixin definition. */
    function new(name:String, defaultValue:String, isVariadic:Bool):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var DefaultValue(default,set):String;

    private inline function set_DefaultValue(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DefaultValue = {1}", this, __value);
    }

    var IsVariadic(default,set):Bool;

    private inline function set_IsVariadic(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsVariadic = {1}", this, __value);
    }

}
