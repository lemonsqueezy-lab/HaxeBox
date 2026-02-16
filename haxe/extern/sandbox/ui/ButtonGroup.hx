package sandbox.ui;

@:native("Sandbox.UI.ButtonGroup")
extern class ButtonGroup extends sandbox.ui.Panel {
    function new():Void;
    var ValueChanged(default,default):system.Action1<cs.system.Object>;
    var Value(default,default):cs.system.Object;
    var Options(default,default):system.collections.generic.List<sandbox.ui.Option>;
    var ButtonClass(default,default):String;
    var SelectedButton(default,default):sandbox.ui.Panel;
    function AddButton(value:String, action:system.Action):sandbox.ui.Button;
    function AddButtonActive(value:String, action:system.Action1<Bool>):sandbox.ui.Button;
    @:protected function OnChildAdded(child:sandbox.ui.Panel):Void;
    @:protected function OnParametersSet():Void;
    function Tick():Void;
}
