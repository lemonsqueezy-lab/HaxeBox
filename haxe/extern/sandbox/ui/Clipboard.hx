package sandbox.ui;

@:native("Sandbox.UI.Clipboard")
final extern class Clipboard {
    /** Sets the clipboard text */
    static function SetText(text:String):Void;
}
