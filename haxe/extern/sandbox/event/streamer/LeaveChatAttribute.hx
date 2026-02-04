package sandbox.event.streamer;

/** Event called when left a chat */
@:native("Sandbox.Event.Streamer.LeaveChatAttribute")
extern class LeaveChatAttribute {
    function new():Void;
    /** The internal event identifier. */
    var EventName(default,default):String;
    /** Events with lower numbers are run first. This defaults to 0, so setting it to -1 will mean your event will run before all other events that don't define it. Setting it to 1 would mean it'll run after all events that don't. */
    var Priority(default,default):Int;
    var TypeId(default,never):cs.system.Object;
}
