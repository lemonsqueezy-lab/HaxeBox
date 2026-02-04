package sandbox.audio.delayprocessor;

@:native("Sandbox.Audio.DelayProcessor.State")
extern class State {
    function new():Void;
    @:protected function OnDestroy():Void;
}
