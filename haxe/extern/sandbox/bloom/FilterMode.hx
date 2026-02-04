package sandbox.bloom;

@:native("Sandbox.Bloom.FilterMode")
extern enum abstract FilterMode(Int) {
    var Bilinear;
    var Biquadratic;
}
