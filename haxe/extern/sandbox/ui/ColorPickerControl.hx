package sandbox.ui;

@:native("Sandbox.UI.ColorPickerControl")
extern class ColorPickerControl extends sandbox.ui.BaseControl {
    function new():Void;
    function Rebuild():Void;
    function Tick():Void;
}
