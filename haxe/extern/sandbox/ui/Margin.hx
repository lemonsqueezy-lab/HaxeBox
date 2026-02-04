package sandbox.ui;

/** Represents a Rect where each side is the thickness of an edge/padding/margin/border, rather than positions. */
@:native("Sandbox.UI.Margin")
final extern class Margin {
    overload function new(uniform:Single):Void;
    overload function new(horizontal:Single, vertical:Single):Void;
    overload function new(left:Single, top:Single, right:Single, bottom:Single):Void;
    overload function new(r:sandbox.Rect):Void;
    /** Width of the inner square contained within the margin. */
    var Width(default,set):Single;

    private inline function set_Width(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Width = {1}", this, __value);
    }

    /** Height of the inner square contained within the margin. */
    var Height(default,set):Single;

    private inline function set_Height(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Height = {1}", this, __value);
    }

    /** Thickness of the left side margin. */
    var Left(default,set):Single;

    private inline function set_Left(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Left = {1}", this, __value);
    }

    /** Thickness of the top margin. */
    var Top(default,set):Single;

    private inline function set_Top(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Top = {1}", this, __value);
    }

    /** Thickness of the right side margin. */
    var Right(default,set):Single;

    private inline function set_Right(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Right = {1}", this, __value);
    }

    /** Thickness of the bottom margin. */
    var Bottom(default,set):Single;

    private inline function set_Bottom(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Bottom = {1}", this, __value);
    }

    /** Position of the inner top left corder of the margin/border. */
    var Position(default,set):Vector2;

    private inline function set_Position(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    /** Size of the inner square contained within the margin. */
    var Size(default,set):Vector2;

    private inline function set_Size(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Size = {1}", this, __value);
    }

    /** When the Rect describes edges, this returns the total size of the edges in each direction */
    var EdgeSize(default,never):Vector2;
    /** Where padding is an edge type rect, will return this rect expanded with those edges. */
    function EdgeAdd(edges:sandbox.ui.Margin):sandbox.ui.Margin;
    /** Where padding is an edge type rect, will return this rect expanded with those edges. */
    function EdgeSubtract(edges:sandbox.ui.Margin):sandbox.ui.Margin;
    function GetHashCode():Int;
    /** Returns true if margin is practically zero */
    function IsNearlyZero(tolerance:Float):Bool;
}
