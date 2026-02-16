package sandbox.ui;

@:native("Sandbox.UI.SliderControl")
extern class SliderControl extends sandbox.ui.BaseControl {
    overload function new():Void;
    overload function new(min:Single, max:Single, step:Single):Void;
    var OnValueChanged(default,default):system.Action1<Single>;
    var Max(default,default):Single;
    var Min(default,default):Single;
    var Step(default,default):Single;
    var ShowRange(default,default):Bool;
    var ShowValueTooltip(default,default):Bool;
    var ShowTextEntry(default,default):Bool;
    var NumberFormat(default,default):String;
    var Value(default,default):Single;
    @:protected function BuildRenderTree(__builder:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    @:protected function GetRenderTreeChecksum():String;
    @:protected function OnMiddleClick(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    function Rebuild():Void;
    function ScreenPosToValue(pos:Vector2):Single;
}
