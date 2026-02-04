package sandbox.ui;

/** Represents position and size of a on the screen. */
@:native("Sandbox.UI.Box")
extern class Box {
    function new():Void;
    /** Position of the left edge in screen coordinates. */
    var Left(default,never):Single;
    /** Position of the right edge in screen coordinates. */
    var Right(default,never):Single;
    /** Position of the top edge in screen coordinates. */
    var Top(default,never):Single;
    /** Position of the bottom edge in screen coordinates. */
    var Bottom(default,never):Single;
    var RectOuter(default,default):sandbox.Rect;
    var RectInner(default,default):sandbox.Rect;
    var Padding(default,default):sandbox.ui.Margin;
    var Border(default,default):sandbox.ui.Margin;
    var Margin(default,default):sandbox.ui.Margin;
    var Rect(default,default):sandbox.Rect;
    var ClipRect(default,default):sandbox.Rect;
}
