package sandbox.scenecamera.bloomaccessor;

@:native("Sandbox.SceneCamera.BloomAccessor.BloomMode")
extern enum abstract BloomMode(Int) {
    var Additive;
    var Screen;
    var Blur;
}
