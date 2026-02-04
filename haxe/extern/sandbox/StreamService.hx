package sandbox;

/** Streamer integration services */
@:native("Sandbox.StreamService")
extern enum abstract StreamService(Int) {
    var None;
    var Twitch;
}
