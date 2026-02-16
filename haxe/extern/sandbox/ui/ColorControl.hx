package sandbox.ui;

@:native("Sandbox.UI.ColorControl")
extern class ColorControl extends sandbox.ui.BaseControl {
    function new():Void;
    function Rebuild():Void;
    function Tick():Void;
}
