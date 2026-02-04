package sandbox.input;

/** Keyboard related glyph methods. */
@:native("Sandbox.Input.Keyboard")
final extern class Keyboard {
    /** Keyboard key is held down */
    static function Down(keyName:String):Bool;
    /** Get a glyph texture from a specific key name. */
    static function GetGlyph(key:String, size:sandbox.InputGlyphSize, outline:Bool):sandbox.Texture;
    /** Keyboard key wasn't pressed but now it is */
    static function Pressed(keyName:String):Bool;
    /** Keyboard key was pressed but now it isn't */
    static function Released(keyName:String):Bool;
}
