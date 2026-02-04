package;

/** A 32bit color, commonly used by things like vertex buffers. The functionality on this is purposely left minimal so we're encouraged to use the regular struct. */
@:native("Color32")
final extern class Color32 {
    /** Initialize a color with each component set to given value, even alpha. */
    overload function new(all:Int):Void;
    /** Initialize a color with each component set to given values, in range [0,255] */
    overload function new(r:Int, g:Int, b:Int, a:Int):Void;
    /** Initialize from an integer of the form 0xAABBGGRR. */
    overload function new(raw:UInt):Void;
    /** A constant representing a fully opaque color white. */
    static var White(default,never):Color32;
    /** A constant representing a fully opaque color black. */
    static var Black(default,never):Color32;
    /** A constant representing a fully transparent color. */
    static var Transparent(default,never):Color32;
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
    var r(default,set):Int;

    private inline function set_r(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.r = {1}", this, __value);
    }

    var g(default,set):Int;

    private inline function set_g(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.g = {1}", this, __value);
    }

    var b(default,set):Int;

    private inline function set_b(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.b = {1}", this, __value);
    }

    var a(default,set):Int;

    private inline function set_a(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.a = {1}", this, __value);
    }

    overload function Equals(o:Color32):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    /** Converts an integer of the form 0xRRGGBB into the color #RRGGBB with 100% alpha. */
    static function FromRgb(rgb:UInt):Color32;
    /** Converts an integer of the form 0xRRGGBBAA into the color #RRGGBBAA. */
    static function FromRgba(rgba:UInt):Color32;
    function GetHashCode():Int;
    /** Returns a new color with each component being the maximum of the 2 given colors. */
    static function Max(a:Color32, b:Color32):Color32;
    /** Returns a new color with each component being the minimum of the 2 given colors. */
    static function Min(a:Color32, b:Color32):Color32;
    /** Parse a string to a color, in format "255 255 255 255" or "255,255,255". Alpha is optional. */
    static function Parse(value:String):Null<Color32>;
    /** Read a color from binary reader. */
    static function Read(reader:system.io.BinaryReader):Color32;
    /** Convert this object to . */
    overload function ToColor():Color;
    overload function ToColor(srgb:Bool):Color;
    function ToString():String;
    /** Write this color to a binary writer. */
    function Write(writer:system.io.BinaryWriter):Void;
}
