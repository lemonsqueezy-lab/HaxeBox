package sandbox.ui;

/** Mouse related . */
@:native("Sandbox.UI.MousePanelEvent")
extern class MousePanelEvent {
    function new(event_name:String, active:sandbox.ui.Panel, button:String):Void;
    /** Which button triggered the event, as a enum. */
    var MouseButton(default,default):sandbox.MouseButtons;
    var Name(default,default):String;
    var Value(default,default):cs.system.Object;
    var Time(default,default):Single;
    var Button(default,default):String;
    /** The panel on which the event is being called. For example, if you have a button with a label.. when the button gets clicked the actual click event might come from the label. When the event is called on the label, This will be the label. When the event propagates up to the button This will be the button - but Target will be the label. This is mainly of use with Razor callbacks, where you want to get the actual panel that created the event. */
    var This(default,default):sandbox.ui.Panel;
    var Target(default,default):sandbox.ui.Panel;
    var LocalPosition(default,default):Vector2;
    var Button(default,default):String;
}
