package sandbox.rendering;

/** Represents filtering modes for texture sampling in the rendering pipeline. */
@:native("Sandbox.Rendering.FilterMode")
extern enum abstract FilterMode(Int) {
    var Point;
    var Bilinear;
    var Trilinear;
    var Anisotropic;
}
