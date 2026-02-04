package sandbox.rendering;

/** Specifies how texture coordinates outside the [0.0, 1.0] range are handled. */
@:native("Sandbox.Rendering.TextureAddressMode")
extern enum abstract TextureAddressMode(Int) {
    var Wrap;
    var Mirror;
    var Clamp;
    var Border;
    var MirrorOnce;
}
