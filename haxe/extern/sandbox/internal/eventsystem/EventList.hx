package sandbox.internal.eventsystem;

/** A list of events, usually indexed by the event name */
@:native("Sandbox.Internal.EventSystem.EventList")
extern class EventList {
    function new():Void;
    var Capacity(default,default):Int;
    var Count(default,never):Int;
    var Item(default,default):sandbox.internal.eventsystem.EventAction;
}
