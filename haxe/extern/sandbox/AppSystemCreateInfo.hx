package sandbox;

@:native("Sandbox.AppSystemCreateInfo")
final extern class AppSystemCreateInfo {
    var Flags(default,set):sandbox.AppSystemFlags;

    private inline function set_Flags(value:sandbox.AppSystemFlags):sandbox.AppSystemFlags {
        var __value:sandbox.AppSystemFlags = cast value;
        return untyped __cs__("{0}.Flags = {1}", this, __value);
    }

    var WindowTitle(default,set):String;

    private inline function set_WindowTitle(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.WindowTitle = {1}", this, __value);
    }

}
