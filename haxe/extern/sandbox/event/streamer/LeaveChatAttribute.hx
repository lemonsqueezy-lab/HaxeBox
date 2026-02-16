package sandbox.event.streamer;

/** Event called when left a chat */
@:native("Sandbox.Event.Streamer.LeaveChatAttribute")
extern class LeaveChatAttribute extends sandbox.EventAttribute {
    function new():Void;
}
