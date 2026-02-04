package sandbox.scenelight;

@:native("Sandbox.SceneLight.FogLightingMode")
extern enum abstract FogLightingMode(Int) {
    var None;
    var Baked;
    var Dynamic;
    var DynamicNoShadows;
}
