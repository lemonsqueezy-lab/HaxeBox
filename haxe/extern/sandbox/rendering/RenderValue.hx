package sandbox.rendering;

@:native("Sandbox.Rendering.RenderValue")
extern enum abstract RenderValue(Int) {
    var ColorTarget;
    var DepthTarget;
    var MsaaCombo;
}
