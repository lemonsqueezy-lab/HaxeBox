package sandbox.audio.pitchprocessor;

@:native("Sandbox.Audio.PitchProcessor.State")
extern class State extends sandbox.audio.audioprocessor.ListenerState {
    function new():Void;
    @:protected function OnDestroy():Void;
}
