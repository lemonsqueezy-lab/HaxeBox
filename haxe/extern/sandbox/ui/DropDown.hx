package sandbox.ui;

@:native("Sandbox.UI.DropDown")
extern class DropDown extends sandbox.ui.PopupButton {
    overload function new():Void;
    overload function new(parent:sandbox.ui.Panel):Void;
    var ValueChanged(default,default):system.Action1<String>;
    var BuildOptions(default,default):system.Func1<system.collections.generic.List<sandbox.ui.Option>>;
    var Options(default,default):system.collections.generic.List<sandbox.ui.Option>;
    var Selected(default,default):sandbox.ui.Option;
    @:protected
    var DropdownIndicator(null,null):sandbox.ui.IconPanel;
    @:protected function OnParametersSet():Void;
    function Open():Void;
    @:protected overload function Select(value:String, triggerChange:Bool):Void;
    @:protected overload function Select(option:sandbox.ui.Option, triggerChange:Bool):Void;
    function SetPropertyObject(name:String, value:cs.system.Object):Void;
}
