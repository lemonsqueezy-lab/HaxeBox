package sandbox.voice;

@:native("Sandbox.Voice.ActivateMode")
extern enum abstract ActivateMode(Int) {
    var AlwaysOn;
    var PushToTalk;
    var Manual;
}
