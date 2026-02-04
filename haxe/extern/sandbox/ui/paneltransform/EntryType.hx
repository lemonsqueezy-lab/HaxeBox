package sandbox.ui.paneltransform;

@:native("Sandbox.UI.PanelTransform.EntryType")
extern enum abstract EntryType(Int) {
    var Invalid;
    var Rotation;
    var Scale;
    var Translate;
    var Skew;
    var Matrix;
    var Perspective;
}
