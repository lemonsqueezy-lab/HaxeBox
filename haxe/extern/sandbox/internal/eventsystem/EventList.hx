package sandbox.internal.eventsystem;

/** A list of events, usually indexed by the event name */
@:native("Sandbox.Internal.EventSystem.EventList")
extern class EventList extends system.collections.generic.List<sandbox.internal.eventsystem.EventAction> {
    function new():Void;
}
