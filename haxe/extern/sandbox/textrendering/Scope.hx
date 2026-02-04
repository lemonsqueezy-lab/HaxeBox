package sandbox.textrendering;

/** Defines a scope of text, all using the same style. */
@:native("Sandbox.TextRendering.Scope")
final extern class Scope {
    function new(text:String, color:Color, size:Single, font:String, weight:Int):Void;
    static var Default(default,never):sandbox.textrendering.Scope;
    var Text(default,set):String;

    private inline function set_Text(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Text = {1}", this, __value);
    }

    var TextColor(default,set):Color;

    private inline function set_TextColor(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.TextColor = {1}", this, __value);
    }

    var FontName(default,set):String;

    private inline function set_FontName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.FontName = {1}", this, __value);
    }

    var FontSize(default,set):Single;

    private inline function set_FontSize(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FontSize = {1}", this, __value);
    }

    var FontWeight(default,set):Int;

    private inline function set_FontWeight(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.FontWeight = {1}", this, __value);
    }

    var FontItalic(default,set):Bool;

    private inline function set_FontItalic(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.FontItalic = {1}", this, __value);
    }

    var LineHeight(default,set):Single;

    private inline function set_LineHeight(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.LineHeight = {1}", this, __value);
    }

    var LetterSpacing(default,set):Single;

    private inline function set_LetterSpacing(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.LetterSpacing = {1}", this, __value);
    }

    var WordSpacing(default,set):Single;

    private inline function set_WordSpacing(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.WordSpacing = {1}", this, __value);
    }

    var FilterMode(default,set):sandbox.rendering.FilterMode;

    private inline function set_FilterMode(value:sandbox.rendering.FilterMode):sandbox.rendering.FilterMode {
        var __value:sandbox.rendering.FilterMode = cast value;
        return untyped __cs__("{0}.FilterMode = {1}", this, __value);
    }

    var FontSmooth(default,set):sandbox.ui.FontSmooth;

    private inline function set_FontSmooth(value:sandbox.ui.FontSmooth):sandbox.ui.FontSmooth {
        var __value:sandbox.ui.FontSmooth = cast value;
        return untyped __cs__("{0}.FontSmooth = {1}", this, __value);
    }

    var Outline(default,set):sandbox.textrendering.Outline;

    private inline function set_Outline(value:sandbox.textrendering.Outline):sandbox.textrendering.Outline {
        var __value:sandbox.textrendering.Outline = cast value;
        return untyped __cs__("{0}.Outline = {1}", this, __value);
    }

    var Shadow(default,set):sandbox.textrendering.Shadow;

    private inline function set_Shadow(value:sandbox.textrendering.Shadow):sandbox.textrendering.Shadow {
        var __value:sandbox.textrendering.Shadow = cast value;
        return untyped __cs__("{0}.Shadow = {1}", this, __value);
    }

    var OutlineUnder(default,set):sandbox.textrendering.Outline;

    private inline function set_OutlineUnder(value:sandbox.textrendering.Outline):sandbox.textrendering.Outline {
        var __value:sandbox.textrendering.Outline = cast value;
        return untyped __cs__("{0}.OutlineUnder = {1}", this, __value);
    }

    var ShadowUnder(default,set):sandbox.textrendering.Shadow;

    private inline function set_ShadowUnder(value:sandbox.textrendering.Shadow):sandbox.textrendering.Shadow {
        var __value:sandbox.textrendering.Shadow = cast value;
        return untyped __cs__("{0}.ShadowUnder = {1}", this, __value);
    }

    function GetHashCode():Int;
    /** Measures the rendered size of the text in this using its current style settings. This is non trivial but the underlying style is cached, so if you end up drawing it, it'll re-use the cached data anyway. */
    function Measure():Vector2;
}
