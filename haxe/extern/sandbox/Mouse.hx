package sandbox;

/** Gives access to mouse position etc */
@:native("Sandbox.Mouse")
final extern class Mouse {
    static var Velocity(default,never):Vector2;
    /** Access to local clients' cursor position, relative to game windows' top left corner. */
    static var Position(default,default):Vector2;
    /** Change in local clients' cursor position since last frame. */
    static var Delta(default,never):Vector2;
    /** Sets the cursor type until another panel stomps this value. Doesn't affect main menu. */
    static var CursorType(default,default):String;
    /** Whether the local clients' cursor is active or not, meaning it can interact with UI elements, etc. */
    static var Active(default,never):Bool;
    /** DEPRECATED. Use Mouse.Visibility instead. */
    static var Visible(default,default):Bool;
    /** The visibility state of the mouse cursor. Auto will only show the mouse when clickable UI elements are visible. */
    static var Visibility(default,default):sandbox.MouseVisibility;
}
