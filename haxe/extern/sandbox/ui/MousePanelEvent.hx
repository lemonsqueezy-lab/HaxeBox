package sandbox.ui;

/** Mouse related . */
@:native("Sandbox.UI.MousePanelEvent")
extern class MousePanelEvent extends sandbox.ui.PanelEvent {
    function new(event_name:String, active:sandbox.ui.Panel, button:String):Void;
    /** Which button triggered the event, as a enum. */
    var MouseButton(default,default):sandbox.MouseButtons;
    var LocalPosition(default,default):Vector2;
}
