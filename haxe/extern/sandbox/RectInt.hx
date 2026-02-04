package sandbox;

/** Represents a rectangle but with whole numbers */
@:native("Sandbox.RectInt")
final extern class RectInt {
    overload function new(x:Int, y:Int, width:Int, height:Int):Void;
    overload function new(point:Vector2Int, size:Vector2Int):Void;
    /** Width of the rect. */
    var Width(default,set):Int;

    private inline function set_Width(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    /** Height of the rect. */
    var Height(default,set):Int;

    private inline function set_Height(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    /** Position of rect's left edge relative to its parent, can also be interpreted as its position on the X axis. */
    var Left(default,set):Int;

    private inline function set_Left(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Left = {1}", this, __value);
    }

    /** Position of rect's top edge relative to its parent, can also be interpreted as its position on the Y axis. */
    var Top(default,set):Int;

    private inline function set_Top(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Top = {1}", this, __value);
    }

    /** Position of rect's right edge relative to its parent. */
    var Right(default,set):Int;

    private inline function set_Right(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Right = {1}", this, __value);
    }

    /** Position of rect's bottom edge relative to its parent. */
    var Bottom(default,set):Int;

    private inline function set_Bottom(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Bottom = {1}", this, __value);
    }

    /** Position of this rect. */
    var Position(default,set):Vector2Int;

    private inline function set_Position(value:Vector2Int):Vector2Int {
        var __value:Vector2Int = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    /** Center of this rect. */
    var Center(default,never):Vector2;
    /** Size of this rect. */
    var Size(default,set):Vector2Int;

    private inline function set_Size(value:Vector2Int):Vector2Int {
        var __value:Vector2Int = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

    /** Returns this rect with position set to 0 on both axes. */
    var WithoutPosition(default,never):sandbox.RectInt;
    /** Position of the bottom left edge of this rect. */
    var BottomLeft(default,never):Vector2Int;
    /** Position of the bottom right edge of this rect. */
    var BottomRight(default,never):Vector2Int;
    /** Position of the top right edge of this rect. */
    var TopRight(default,never):Vector2Int;
    /** Position of the top left edge of this rect. */
    var TopLeft(default,never):Vector2Int;
    /** Expand this Rect to contain the point */
    overload function Add(point:Vector2Int):Void;
    overload function Add(r:sandbox.RectInt):Void;
    /** Returns this rect expanded to include this point */
    function AddPoint(pos:Vector2Int):sandbox.RectInt;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.RectInt):Bool;
    static function FromPoints(a:Vector2Int, b:Vector2Int):sandbox.RectInt;
    function GetHashCode():Int;
    overload function Grow(amt:Int):sandbox.RectInt;
    overload function Grow(x:Int, y:Int):sandbox.RectInt;
    overload function Grow(left:Int, top:Int, right:Int, bottom:Int):sandbox.RectInt;
    overload function IsInside(pos:Vector2Int):Bool;
    overload function IsInside(rect:sandbox.RectInt, fullyInside:Bool):Bool;
    overload function Shrink(amt:Int):sandbox.RectInt;
    overload function Shrink(x:Int, y:Int):sandbox.RectInt;
    overload function Shrink(left:Int, top:Int, right:Int, bottom:Int):sandbox.RectInt;
    function ToString():String;
}
