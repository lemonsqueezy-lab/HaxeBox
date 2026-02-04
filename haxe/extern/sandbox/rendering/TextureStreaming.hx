package sandbox.rendering;

/** Gives global access to the texture streaming system. */
@:native("Sandbox.Rendering.TextureStreaming")
final extern class TextureStreaming {
    /** Run a block of code with texture streaming disabled */
    static function ExecuteWithDisabled(action:system.Action):Void;
}
