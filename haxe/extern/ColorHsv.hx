package;

/** A color in Hue-Saturation-Value/Brightness format. */
@:native("ColorHsv")
final extern class ColorHsv {
    /** Initializes a new HSV/HSB color. Hue is in the range of [0-360] and all other values are in range [0,1] */
    function new(h:Single, s:Single, v:Single, a:Single):Void;
    /** Hue component of this color in range 0 to 360. */
    var Hue(default,set):Single;

    private inline function set_Hue(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Hue = {1}", this, __value);
    }

    /** Saturation of this color in range 0 (white) to 1 (full color). */
    var Saturation(default,set):Single;

    private inline function set_Saturation(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Saturation = {1}", this, __value);
    }

    /** Brightness of this color in range 0 (black) to 1 (full color). */
    var Value(default,set):Single;

    private inline function set_Value(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    /** Transparency of this color in range 0 (fully transparent) to 1 (fully opaque). */
    var Alpha(default,set):Single;

    private inline function set_Alpha(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Alpha = {1}", this, __value);
    }

    overload function Equals(o:ColorHsv):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Convert this object to . */
    function ToColor():Color;
    function ToString():String;
    /** Returns a copy of this color with given alpha value. */
    function WithAlpha(alpha:Single):ColorHsv;
    /** Returns a copy of this color with given Hue value. */
    function WithHue(hue:Single):ColorHsv;
    /** Returns a copy of this color with given Saturation value. */
    function WithSaturation(saturation:Single):ColorHsv;
    /** Returns a copy of this color with given Brightness value. */
    function WithValue(value:Single):ColorHsv;
}
