package sandbox;

/** Access to time. */
@:native("Sandbox.RealTime")
final extern class RealTime {
    /** The time since game startup, in seconds. */
    static var Now(default,never):Single;
    /** The number of a seconds since a set point in time. This value should match between servers and clients. If they have their timezone set correctly. */
    static var GlobalNow(default,never):Float;
    /** The time delta (in seconds) between the last frame and the current (for all intents and purposes) */
    static var Delta(default,never):Single;
    /** Like Delta but smoothed to avoid large disparities between deltas */
    static var SmoothDelta(default,never):Single;
}
