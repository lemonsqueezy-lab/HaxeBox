package sandbox.ui;

@:native("Sandbox.UI.PasteEvent")
extern class PasteEvent extends sandbox.ui.PanelEvent {
    var ClipboardValue(default,default):String;
}
