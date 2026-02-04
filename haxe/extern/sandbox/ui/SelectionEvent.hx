package sandbox.ui;

@:native("Sandbox.UI.SelectionEvent")
extern class SelectionEvent {
    function new(event_name:String, active:sandbox.ui.Panel):Void;
    var Name(default,default):String;
    var Value(default,default):cs.system.Object;
    var Time(default,default):Single;
    var Button(default,default):String;
    /** The panel on which the event is being called. For example, if you have a button with a label.. when the button gets clicked the actual click event might come from the label. When the event is called on the label, This will be the label. When the event propagates up to the button This will be the button - but Target will be the label. This is mainly of use with Razor callbacks, where you want to get the actual panel that created the event. */
    var This(default,default):sandbox.ui.Panel;
    var Target(default,default):sandbox.ui.Panel;
    var SelectionRect(default,default):sandbox.Rect;
    var StartPoint(default,default):Vector2;
    var EndPoint(default,default):Vector2;
}
