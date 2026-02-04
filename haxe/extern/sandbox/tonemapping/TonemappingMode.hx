package sandbox.tonemapping;

/** Options to select a tonemapping algorithm to use for color grading. */
@:native("Sandbox.Tonemapping.TonemappingMode")
extern enum abstract TonemappingMode(Int) {
    var HableFilmic;
    var ACES;
    var ReinhardJodie;
    var Linear;
    var AgX;
}
