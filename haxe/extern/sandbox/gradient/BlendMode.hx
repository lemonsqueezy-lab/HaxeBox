package sandbox.gradient;

/** Describes how the line should behave when entering/leaving a frame */
@:native("Sandbox.Gradient.BlendMode")
extern enum abstract BlendMode(Int) {
    var Linear;
    var Stepped;
}
