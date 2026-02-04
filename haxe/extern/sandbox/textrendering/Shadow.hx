package sandbox.textrendering;

@:native("Sandbox.TextRendering.Shadow")
final extern class Shadow {
    function new():Void;
    var Enabled(default,set):Bool;

    private inline function set_Enabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Enabled = {1}", this, __value);
    }

    var Size(default,set):Single;

    private inline function set_Size(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

    var Color(default,set):Color;

    private inline function set_Color(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    var Offset(default,set):Vector2;

    private inline function set_Offset(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Offset = {1}", this, __value);
    }

    function GetHashCode():Int;
}
