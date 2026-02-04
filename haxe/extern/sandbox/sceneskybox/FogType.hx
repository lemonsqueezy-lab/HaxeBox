package sandbox.sceneskybox;

@:native("Sandbox.SceneSkyBox.FogType")
extern enum abstract FogType(Int) {
    var None;
    var Distance;
    var Angular;
}
