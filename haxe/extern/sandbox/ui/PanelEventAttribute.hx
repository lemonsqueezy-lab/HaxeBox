package sandbox.ui;

/** Add an event listener to a event with the given name. See . */
@:native("Sandbox.UI.PanelEventAttribute")
extern class PanelEventAttribute extends system.Attribute {
    function new(name:String):Void;
    /** Name of the event to listen to. */
    var Name(default,default):String;
}
