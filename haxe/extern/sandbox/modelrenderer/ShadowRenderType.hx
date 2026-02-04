package sandbox.modelrenderer;

@:native("Sandbox.ModelRenderer.ShadowRenderType")
extern enum abstract ShadowRenderType(Int) {
    var On;
    var Off;
    var ShadowsOnly;
}
