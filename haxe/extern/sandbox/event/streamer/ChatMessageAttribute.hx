package sandbox.event.streamer;

/** Event called when chat message comes in */
@:native("Sandbox.Event.Streamer.ChatMessageAttribute")
extern class ChatMessageAttribute extends sandbox.EventAttribute {
    function new():Void;
}
