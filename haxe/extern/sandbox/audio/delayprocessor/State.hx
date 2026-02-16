package sandbox.audio.delayprocessor;

@:native("Sandbox.Audio.DelayProcessor.State")
extern class State extends sandbox.audio.audioprocessor.ListenerState {
    function new():Void;
    @:protected function OnDestroy():Void;
}
