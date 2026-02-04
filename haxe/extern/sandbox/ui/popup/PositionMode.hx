package sandbox.ui.popup;

@:native("Sandbox.UI.Popup.PositionMode")
extern enum abstract PositionMode(Int) {
    var Left;
    var Right;
    var LeftBottom;
    var RightBottom;
    var AboveLeft;
    var BelowLeft;
    var BelowCenter;
    var BelowStretch;
    var AboveCenter;
    var UnderMouse;
}
