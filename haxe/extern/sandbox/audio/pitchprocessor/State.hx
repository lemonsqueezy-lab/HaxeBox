package sandbox.audio.pitchprocessor;

@:native("Sandbox.Audio.PitchProcessor.State")
extern class State {
    function new():Void;
    @:protected function OnDestroy():Void;
}
