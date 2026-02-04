package sandbox;

@:native("Sandbox.Achievement")
final extern class Achievement {
    var Name(default,never):String;
    var Title(default,never):String;
    var Description(default,never):String;
    var Icon(default,never):String;
    var IsUnlocked(default,never):Bool;
    var UnlockTimestamp(default,never):Null<system.DateTimeOffset>;
    var Score(default,never):Int;
    var Range(default,never):Vector2;
    var CurrentValue(default,never):Single;
    /** Returns whether this achievement should be visible to the player */
    var IsVisible(default,never):Bool;
    var HasProgression(default,never):Bool;
    var GlobalUnlocked(default,never):Int;
    var GlobalFraction(default,never):Single;
    /** A float, representing the progression of this stat. 0 is 0%, 1 is 100%. Not clamped. */
    var ProgressionFraction(default,never):Single;
}
