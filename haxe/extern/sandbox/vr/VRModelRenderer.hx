package sandbox.vr;

/** Renders a device-specific model for a VR device */
@:native("Sandbox.VR.VRModelRenderer")
extern class VRModelRenderer extends sandbox.Component {
    function new():Void;
    /** Which device should we use to fetch the model? */
    var ModelSource(default,default):sandbox.vr.vrmodelrenderer.ModelSources;
    /** Which model renderer should we use as the target? */
    var ModelRenderer(default,default):sandbox.ModelRenderer;
    @:protected function OnStart():Void;
}
