package sandbox;

/** Represents a rectangle. */
@:native("Sandbox.Rect")
final extern class Rect {
    overload function new(x:Single, y:Single, width:Single, height:Single):Void;
    overload function new(point:Vector2, size:Vector2):Void;
    /** Width of the rect. */
    var Width(default,set):Single;

    private inline function set_Width(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    /** Height of the rect. */
    var Height(default,set):Single;

    private inline function set_Height(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    /** Position of rect's left edge relative to its parent, can also be interpreted as its position on the X axis. */
    var Left(default,set):Single;

    private inline function set_Left(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Left = {1}", this, __value);
    }

    /** Position of rect's top edge relative to its parent, can also be interpreted as its position on the Y axis. */
    var Top(default,set):Single;

    private inline function set_Top(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Top = {1}", this, __value);
    }

    /** Position of rect's right edge relative to its parent. */
    var Right(default,set):Single;

    private inline function set_Right(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Right = {1}", this, __value);
    }

    /** Position of rect's bottom edge relative to its parent. */
    var Bottom(default,set):Single;

    private inline function set_Bottom(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Bottom = {1}", this, __value);
    }

    /** Position of this rect. */
    var Position(default,set):Vector2;

    private inline function set_Position(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    /** Center of this rect. */
    var Center(default,never):Vector2;
    /** Size of this rect. */
    var Size(default,set):Vector2;

    private inline function set_Size(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

    /** Returns this rect with position set to 0 on both axes. */
    var WithoutPosition(default,never):sandbox.Rect;
    /** Position of the bottom left edge of this rect. */
    var BottomLeft(default,never):Vector2;
    /** Position of the bottom right edge of this rect. */
    var BottomRight(default,never):Vector2;
    /** Position of the top right edge of this rect. */
    var TopRight(default,never):Vector2;
    /** Position of the top left edge of this rect. */
    var TopLeft(default,never):Vector2;
    /** Expand this Rect to contain the point */
    overload function Add(point:Vector2):Void;
    overload function Add(r:sandbox.Rect):Void;
    /** Returns this rect expanded to include this point */
    function AddPoint(pos:Vector2):sandbox.Rect;
    function Align(size:Vector2, align:sandbox.TextFlag):sandbox.Rect;
    /** Returns a Rect with position and size rounded up. */
    function Ceiling():sandbox.Rect;
    function ClosestPoint(point:Vector2):Vector2;
    function Contain(size:Vector2, align:sandbox.TextFlag, stretch:Bool):sandbox.Rect;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.Rect):Bool;
    /** Returns a Rect with position and size rounded down. */
    function Floor():sandbox.Rect;
    static function FromPoints(a:Vector2, b:Vector2):sandbox.Rect;
    function GetHashCode():Int;
    /** Returns a Rect grown in every direction by Margin's values. */
    overload function Grow(amt:Single):sandbox.Rect;
    overload function Grow(m:sandbox.ui.Margin):sandbox.Rect;
    overload function Grow(x:Single, y:Single):sandbox.Rect;
    overload function Grow(left:Single, top:Single, right:Single, bottom:Single):sandbox.Rect;
    overload function IsInside(pos:Vector2):Bool;
    overload function IsInside(rect:sandbox.Rect, fullyInside:Bool):Bool;
    /** Returns a Rect with position and size rounded to closest integer values. */
    function Round():sandbox.Rect;
    overload function Shrink(amt:Single):sandbox.Rect;
    overload function Shrink(m:sandbox.ui.Margin):sandbox.Rect;
    overload function Shrink(x:Single, y:Single):sandbox.Rect;
    overload function Shrink(left:Single, top:Single, right:Single, bottom:Single):sandbox.Rect;
    /** Align to a grid */
    function SnapToGrid():sandbox.Rect;
    function ToString():String;
    /** Returns this rect as a Vector4, where X/Y/Z/W are Left/Top/Right/Bottom respectively. */
    function ToVector4():Vector4;
}
