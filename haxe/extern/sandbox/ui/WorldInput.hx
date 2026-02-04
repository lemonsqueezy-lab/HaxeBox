package sandbox.ui;

@:native("Sandbox.UI.WorldInput")
extern class WorldInput {
    function new():Void;
    var Enabled(default,default):Bool;
    var Ray(default,default):Ray;
    var MouseLeftPressed(default,default):Bool;
    var MouseRightPressed(default,default):Bool;
    var MouseWheel(default,default):Vector2;
    var UseMouseInput(default,default):Bool;
    var Hovered(default,never):sandbox.ui.Panel;
    var Active(default,never):sandbox.ui.Panel;
}
