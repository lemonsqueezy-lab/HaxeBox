package sandbox.ui.dev;

@:native("Sandbox.UI.Dev.DevLayer")
extern class DevLayer extends sandbox.ui.RootPanel {
    function new():Void;
    static var DevUI_Scale(default,default):Single;
    static var Instance(default,default):sandbox.ui.dev.DevLayer;
    function OnDeleted():Void;
    @:protected function UpdateScale(screenSize:sandbox.Rect):Void;
}
