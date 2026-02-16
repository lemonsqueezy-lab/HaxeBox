package sandbox.ui;

@:native("Sandbox.UI.DragEvent")
extern class DragEvent extends sandbox.ui.PanelEvent {
    var MouseDelta(default,default):Vector2;
    var LocalGrabPosition(default,default):Vector2;
    var ScreenGrabPosition(default,default):Vector2;
    var LocalPosition(default,default):Vector2;
    var ScreenPosition(default,default):Vector2;
}
