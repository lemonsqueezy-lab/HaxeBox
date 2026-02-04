package sandbox;

/** Flags providing hints about a texture */
@:native("Sandbox.TextureFlags")
extern enum abstract TextureFlags(Int) {
    var None;
    var PremultipliedAlpha;
}
