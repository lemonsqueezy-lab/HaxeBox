package sandbox.textrenderer;

/** Represents the horizontal alignment of the text. */
@:native("Sandbox.TextRenderer.HAlignment")
extern enum abstract HAlignment(Int) {
    var Left;
    var Center;
    var Right;
}
