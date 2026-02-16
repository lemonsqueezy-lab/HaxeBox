package sandbox.ui;

@:native("Sandbox.UI.SelectionEvent")
extern class SelectionEvent extends sandbox.ui.PanelEvent {
    function new(event_name:String, active:sandbox.ui.Panel):Void;
    var SelectionRect(default,default):sandbox.Rect;
    var StartPoint(default,default):Vector2;
    var EndPoint(default,default):Vector2;
}
