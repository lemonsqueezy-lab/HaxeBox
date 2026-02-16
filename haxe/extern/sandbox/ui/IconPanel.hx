package sandbox.ui;

@:native("Sandbox.UI.IconPanel")
extern class IconPanel extends sandbox.ui.Label {
    overload function new():Void;
    overload function new(icon:String, classes:String):Void;
}
