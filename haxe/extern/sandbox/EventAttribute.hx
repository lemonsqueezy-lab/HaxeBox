package sandbox;

/** A generic event listener. You are probably looking for Sandbox.Event.* attributes. */
@:native("Sandbox.EventAttribute")
extern class EventAttribute {
    function new(eventName:String):Void;
    /** The internal event identifier. */
    var EventName(default,default):String;
    /** Events with lower numbers are run first. This defaults to 0, so setting it to -1 will mean your event will run before all other events that don't define it. Setting it to 1 would mean it'll run after all events that don't. */
    var Priority(default,default):Int;
    var TypeId(default,never):cs.system.Object;
}
