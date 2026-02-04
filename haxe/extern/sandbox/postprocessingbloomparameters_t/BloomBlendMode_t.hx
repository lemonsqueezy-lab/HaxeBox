package sandbox.postprocessingbloomparameters_t;

@:native("PostProcessingBloomParameters_t.BloomBlendMode_t")
extern enum abstract BloomBlendMode_t(Int) {
    var BLOOM_BLEND_ADD;
    var BLOOM_BLEND_SCREEN;
    var BLOOM_BLEND_BLUR;
}
