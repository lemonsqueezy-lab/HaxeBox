package sandbox.audio.dspprocessor;

@:native("Sandbox.Audio.DspProcessor.State")
extern class State extends sandbox.audio.audioprocessor.ListenerState {
    function new():Void;
    @:protected function OnDestroy():Void;
}
