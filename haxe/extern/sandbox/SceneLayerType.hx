package sandbox;

@:native("Sandbox.SceneLayerType")
extern enum abstract SceneLayerType(Int) {
    var Unknown;
    var Translucent;
    var Shadow;
    var EffectsTranslucent;
    var EffectsOpaque;
    var DepthPrepass;
    var Opaque;
}
