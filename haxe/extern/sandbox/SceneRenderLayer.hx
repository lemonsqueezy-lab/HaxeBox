package sandbox;

/** SceneObjects can be rendered on layers other than the main game layer. This is useful if, for example, you want to render on top of everything without applying post processing. */
@:native("Sandbox.SceneRenderLayer")
extern enum abstract SceneRenderLayer(Int) {
    var Default;
    var ViewModel;
    var OverlayWithDepth;
    var OverlayWithoutDepth;
}
