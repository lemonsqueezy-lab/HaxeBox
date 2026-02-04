package sandbox.cursorsettings;

@:native("Sandbox.CursorSettings.Cursor")
final extern class Cursor {
    var Image(default,set):String;

    private inline function set_Image(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Image = {1}", this, __value);
    }

    var Hotspot(default,set):Vector2;

    private inline function set_Hotspot(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Hotspot = {1}", this, __value);
    }

}
