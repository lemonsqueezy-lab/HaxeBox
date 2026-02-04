package sandbox.vr.vrmodelrenderer;

/** Represents a controller to use when fetching the model (which device) */
@:native("Sandbox.VR.VRModelRenderer.ModelSources")
extern enum abstract ModelSources(Int) {
    var LeftHand;
    var RightHand;
}
