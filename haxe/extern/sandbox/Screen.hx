package sandbox;

/** Access screen dimension etc. */
@:native("Sandbox.Screen")
final extern class Screen {
    /** The total size of the game screen */
    static var Size(default,never):Vector2;
    /** The width of the game screen. Equal to Screen.x */
    static var Width(default,never):Single;
    /** The height of the game screen. Equal to Screen.y */
    static var Height(default,never):Single;
    /** The aspect ratio of the screen. Equal to Width/Height */
    static var Aspect(default,never):Single;
    /** The desktop's dpi scale on the current monitor. */
    static var DesktopScale(default,never):Single;
    /** Converts a vertical field of view to a horizontal field of view based on the screen aspect ratio. */
    static overload function CreateVerticalFieldOfView(fieldOfView:Single):Single;
    static overload function CreateVerticalFieldOfView(fieldOfView:Single, aspectRatio:Single):Single;
}
