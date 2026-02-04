package;

/** Represents a color using 4 floats (rgba), with 0-1 range. */
@:native("Color")
final extern class Color {
    /** Initialize from an integer of the form 0xAABBGGRR. */
    overload function new(raw:Int):Void;
    /** Initialize a color with each component set to given value, even alpha. */
    overload function new(all:Single):Void;
    overload function new(rgb:Single, a:Single):Void;
    /** Initialize a color with each component set to given values, in range [0,1] */
    overload function new(r:Single, g:Single, b:Single, a:Single):Void;
    /** Initialize from an integer of the form 0xAABBGGRR. */
    overload function new(raw:UInt):Void;
    /** Returns the luminance of the color, basically it's grayscale value or "black and white version". */
    var Luminance(default,never):Single;
    /** Returns true if this color can be represented in hexadecimal format (#RRGGBB[AA]). This may not be the case if the color components are outside of [0,1] range. */
    var IsRepresentableInHex(default,never):Bool;
    /** Returns true if all components are between 0 and 1 */
    var IsSdr(default,never):Bool;
    /** Returns true if any component exceeds 1 */
    var IsHdr(default,never):Bool;
    /** String representation of the form "#RRGGBB[AA]". */
    var Hex(default,never):String;
    /** String representation in the form of rgba( r, g, b, a ) css function notation. */
    var Rgba(default,never):String;
    /** String representation in the form of rgb( r, g, b ) css function notation. */
    var Rgb(default,never):String;
    /** Integer representation of the form 0xRRGGBBAA. */
    var RgbaInt(default,never):UInt;
    /** Integer representation of the form 0xRRGGBB. */
    var RgbInt(default,never):UInt;
    /** Integer representation of the form 0xAABBGGRR as used by native code. */
    var RawInt(default,never):UInt;
    /** Returns a random color out of 8 preset colors. */
    static var Random(default,never):Color;
    var Item(default,set):Single;

    private inline function set_Item(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    var r(default,set):Single;

    private inline function set_r(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.r = {1}", this, __value);
    }

    var g(default,set):Single;

    private inline function set_g(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.g = {1}", this, __value);
    }

    var b(default,set):Single;

    private inline function set_b(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.b = {1}", this, __value);
    }

    var a(default,set):Single;

    private inline function set_a(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.a = {1}", this, __value);
    }

    static var White(default,never):Color;
    static var Gray(default,never):Color;
    static var Black(default,never):Color;
    static var Red(default,never):Color;
    static var Green(default,never):Color;
    static var Blue(default,never):Color;
    static var Yellow(default,never):Color;
    static var Orange(default,never):Color;
    static var Cyan(default,never):Color;
    static var Magenta(default,never):Color;
    static var Transparent(default,never):Color;
    /** Increases or decreases this color's hue */
    function AdjustHue(amount:Single):Color;
    /** Returns a color whose components are averaged of all given colors. */
    static function Average(values:Array<Color>):Color;
    /** Returns how many color components would be changed between this color and another color */
    function ComponentCountChangedBetweenColors(b:Color):Int;
    /** Darkens the color by given amount. */
    function Darken(fraction:Single):Color;
    /** Desaturates the color by given amount. */
    function Desaturate(fraction:Single):Color;
    overload function Equals(o:Color):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    /** Creates a color from 0-255 range inputs, converting them to 0-1 range. */
    static function FromBytes(r:Int, g:Int, b:Int, a:Int):Color;
    /** Converts an integer of the form 0xRRGGBB into the color #RRGGBB with 100% alpha. */
    static function FromRgb(rgb:UInt):Color;
    /** Converts an integer of the form 0xRRGGBBAA into the color #RRGGBBAA. */
    static function FromRgba(rgba:UInt):Color;
    function GetHashCode():Int;
    /** Returns inverted color. Alpha is unchanged. */
    function Invert():Color;
    static function Lerp(a:Color, b:Color, frac:Single, clamped:Bool):Color;
    function LerpTo(target:Color, frac:Single, clamp:Bool):Color;
    /** Lightens the color by given amount. */
    function Lighten(fraction:Single):Color;
    static function Max(a:Color, b:Color):Color;
    static function Min(a:Color, b:Color):Color;
    /** Parse the color from a string. Many common formats are supported. */
    static function Parse(value:String):Null<Color>;
    /** Saturates the color by given amount. */
    function Saturate(fraction:Single):Color;
    /** Convert to a Color32 (a 32 bit color value) */
    function ToColor32(srgb:Bool):Color32;
    /** Converts this color to a HSV format. */
    function ToHsv():ColorHsv;
    /** Converts the color to a string with given parameters. */
    overload function ToString():String;
    overload function ToString(hex:Bool, rgba:Bool):String;
    static function TryParse(value:String, color:Color):Bool;
    /** Returns this color with its alpha value changed */
    function WithAlpha(alpha:Single):Color;
    /** Similar to but multiplies the alpha instead of replacing. */
    function WithAlphaMultiplied(alpha:Single):Color;
    /** Returns this color with its blue value changed */
    function WithBlue(blue:Single):Color;
    /** Returns a new version with only the red, green, blue components multiplied */
    function WithColorMultiplied(amount:Single):Color;
    /** Returns this color with its green value changed */
    function WithGreen(green:Single):Color;
    /** Returns this color with its red value changed */
    function WithRed(red:Single):Color;
}
