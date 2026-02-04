package sandbox.ui;

/** Helper class for working with Unicode emoji. */
@:native("Sandbox.UI.Emoji")
final extern class Emoji {
    /** Find a Unicode emoji from a :emoji_name: format. */
    static function FindEmoji(lookup:String):String;
}
