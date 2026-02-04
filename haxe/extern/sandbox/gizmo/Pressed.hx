package sandbox.gizmo;

/** Access to the currently pressed path information */
@:native("Sandbox.Gizmo.Pressed")
final extern class Pressed {
    /** The ray representing the cursor direction */
    static var Ray(default,never):Ray;
    /** True if the current gizmo scope is pressed */
    static var This(default,never):Bool;
    /** True if any object is currently pressed */
    static var Any(default,never):Bool;
    /** The distance the cursor has travelled since press started */
    static var CursorDelta(default,never):Vector2;
    /** The cursor position at the start of the press */
    static var CursorPosition(default,never):Vector2;
    /** True if press is active. This generally means that the left mouse button is down */
    static var IsActive(default,never):Bool;
    static function ClearPath():Void;
}
