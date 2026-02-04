package sandbox.rendering;

@:native("Sandbox.Rendering.Stage")
extern enum abstract Stage(Int) {
    var AfterDepthPrepass;
    var AfterOpaque;
    var AfterSkybox;
    var AfterTransparent;
    var AfterViewmodel;
    var BeforePostProcess;
    var Tonemapping;
    var AfterPostProcess;
    var AfterUI;
}
