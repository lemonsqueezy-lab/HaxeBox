package sandbox.ui;

@:native("Sandbox.UI.SwitchControl")
extern class SwitchControl extends sandbox.ui.BaseControl {
    function new():Void;
    var Label(default,default):microsoft.aspnetcore.components.RenderFragment;
    var OnValueChanged(default,default):system.Action1<Bool>;
    var Value(default,default):Bool;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
}
