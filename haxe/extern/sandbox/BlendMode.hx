package sandbox;

/** Blend modes used by the UI system */
@:native("Sandbox.BlendMode")
extern enum abstract BlendMode(Int) {
    var Normal;
    var Multiply;
    var Lighten;
    var PremultipliedAlpha;
}
