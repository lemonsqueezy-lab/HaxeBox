package sandbox.ui;

/** A variable unit based length. ie, could be a percentage or a pixel length. This is commonly used to express the size of things in UI space, usually coming from style sheets. */
@:native("Sandbox.UI.Length")
final extern class Length {
    /** Quickly create a Length with Unit set to LengthUnit.Auto */
    static var Auto(default,never):sandbox.ui.Length;
    /** Quickly create a Length with Unit set to LengthUnit.Contain */
    static var Contain(default,never):sandbox.ui.Length;
    /** Quickly create a Length with Unit set to LengthUnit.Cover */
    static var Cover(default,never):sandbox.ui.Length;
    static var Undefined(default,never):sandbox.ui.Length;
    var Value(default,set):Single;

    private inline function set_Value(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    var Unit(default,set):sandbox.ui.LengthUnit;

    private inline function set_Unit(value:sandbox.ui.LengthUnit):sandbox.ui.LengthUnit {
        var __value:sandbox.ui.LengthUnit = cast value;
        return untyped __cs__("{0}.Unit = {1}", this, __value);
    }

    /** Create a length based on a css calc expression */
    static function Calc(expression:String):Null<sandbox.ui.Length>;
    /** Create a length based on the font size of the current element. */
    static function Em(value:Single):sandbox.ui.Length;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.ui.Length):Bool;
    /** Create a length in percents */
    static function Fraction(fraction:Single):Null<sandbox.ui.Length>;
    function GetHashCode():Int;
    /** Convert to a pixel value. Use the dimension to work out percentage values. */
    overload function GetPixels(dimension:Single):Single;
    overload function GetPixels(dimension:Single, contentSize:Single):Single;
    /** Parse a length. This is used by the stylesheet parsing system. */
    static function Parse(value:String):Null<sandbox.ui.Length>;
    /** Create a length in percents */
    static function Percent(percent:Single):Null<sandbox.ui.Length>;
    /** Create a length in pixels */
    static function Pixels(pixels:Single):Null<sandbox.ui.Length>;
    /** Create a length based on the font size of the root element. */
    static function Rem(value:Single):sandbox.ui.Length;
    function ToString():String;
    /** Create a length based on the view height */
    static function ViewHeight(percentage:Single):Null<sandbox.ui.Length>;
    /** Create a length based on the longest edge of the screen size */
    static function ViewMax(percentage:Single):Null<sandbox.ui.Length>;
    /** Create a length based on the shortest edge of the screen size */
    static function ViewMin(percentage:Single):Null<sandbox.ui.Length>;
    /** Create a length based on the view width */
    static function ViewWidth(percentage:Single):Null<sandbox.ui.Length>;
}
