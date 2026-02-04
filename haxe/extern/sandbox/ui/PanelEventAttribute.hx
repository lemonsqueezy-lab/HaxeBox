package sandbox.ui;

/** Add an event listener to a event with the given name. See . */
@:native("Sandbox.UI.PanelEventAttribute")
extern class PanelEventAttribute {
    function new(name:String):Void;
    /** Name of the event to listen to. */
    var Name(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
