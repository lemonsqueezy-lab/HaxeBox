package sandbox.gizmo;

/** Using pure primary colors is horrible. Lets make it easier to avoid. */
@:native("Sandbox.Gizmo.Colors")
final extern class Colors {
    static var Red(default,never):Color;
    static var Forward(default,never):Color;
    static var Pitch(default,never):Color;
    static var Green(default,never):Color;
    static var Left(default,never):Color;
    static var Yaw(default,never):Color;
    static var Blue(default,never):Color;
    static var Up(default,never):Color;
    static var Roll(default,never):Color;
    static var Selected(default,never):Color;
    static var Hovered(default,never):Color;
    static var Active(default,never):Color;
}
