package sandbox.textrenderer;

/** Represents the vertical alignment of the text. */
@:native("Sandbox.TextRenderer.VAlignment")
extern enum abstract VAlignment(Int) {
    var Top;
    var Center;
    var Bottom;
}
