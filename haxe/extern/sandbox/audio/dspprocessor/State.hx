package sandbox.audio.dspprocessor;

@:native("Sandbox.Audio.DspProcessor.State")
extern class State {
    function new():Void;
    @:protected function OnDestroy():Void;
}
