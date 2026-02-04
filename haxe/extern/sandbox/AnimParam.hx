package sandbox;

@:native("Sandbox.AnimParam`1")
final extern class AnimParam<T> {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var MinValue(default,set):T;

    private inline function set_MinValue(value:T):T {
        var __value:T = cast value;
        return untyped __cs__("{0}.MinValue = {1}", this, __value);
    }

    var MaxValue(default,set):T;

    private inline function set_MaxValue(value:T):T {
        var __value:T = cast value;
        return untyped __cs__("{0}.MaxValue = {1}", this, __value);
    }

    var DefaultValue(default,set):T;

    private inline function set_DefaultValue(value:T):T {
        var __value:T = cast value;
        return untyped __cs__("{0}.DefaultValue = {1}", this, __value);
    }

    var OptionNames(default,set):Array<String>;

    private inline function set_OptionNames(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.OptionNames = {1}", this, __value);
    }

}
