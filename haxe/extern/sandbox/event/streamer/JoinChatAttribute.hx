package sandbox.event.streamer;

/** Event called when joined a chat */
@:native("Sandbox.Event.Streamer.JoinChatAttribute")
extern class JoinChatAttribute extends sandbox.EventAttribute {
    function new():Void;
}
