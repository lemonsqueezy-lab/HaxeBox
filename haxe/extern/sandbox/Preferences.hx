package sandbox;

/** Holds information about the current user's preferences. */
@:native("Sandbox.Preferences")
final extern class Preferences {
    /** The user's preference for their field of view */
    static var FieldOfView(default,never):Single;
    /** The user's preferred Music volume, as set in the options, clamped between 0 and 1 */
    static var MusicVolume(default,never):Single;
    /** The user's preferred VOIP volume, as set in the options, clamped between 0 and 1 */
    static var VoipVolume(default,never):Single;
    /** The mouse sensitivity */
    static var Sensitivity(default,never):Single;
    static var ControllerLookYawSpeed(default,never):Single;
    static var ControllerLookPitchSpeed(default,never):Single;
    static var InvertMousePitch(default,never):Bool;
    static var InvertMouseYaw(default,never):Bool;
}
