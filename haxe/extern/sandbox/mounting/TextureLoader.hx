package sandbox.mounting;

@:native("Sandbox.Mounting.TextureLoader")
final extern class TextureLoader {
    /** Creates a from a DDS byte buffer. */
    static function FromDds(bytes:system.ReadOnlySpan<Int>):sandbox.Texture;
}
