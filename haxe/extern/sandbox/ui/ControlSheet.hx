package sandbox.ui;

@:native("Sandbox.UI.ControlSheet")
extern class ControlSheet extends sandbox.ui.Panel {
    function new():Void;
    var Target(default,default):cs.system.Object;
    var PropertyFilter(default,default):system.Func2<sandbox.SerializedProperty,Bool>;
    function Rebuild():Void;
    function Tick():Void;
}
