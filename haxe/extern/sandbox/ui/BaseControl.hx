package sandbox.ui;

@:native("Sandbox.UI.BaseControl")
extern class BaseControl extends sandbox.ui.Panel {
    function new():Void;
    var Property(default,default):sandbox.SerializedProperty;
    var SupportsMultiEdit(default,never):Bool;
    static function CreateFor(property:sandbox.SerializedProperty):sandbox.ui.BaseControl;
    function Rebuild():Void;
    function Tick():Void;
}
