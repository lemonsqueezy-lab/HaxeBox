package sandbox.audio.audioprocessor;

/** One of these is created for every listener that uses an audio processor. */
@:native("Sandbox.Audio.AudioProcessor.ListenerState")
extern class ListenerState {
    /** Called when audio processor or the listener is removed. */
    @:protected function OnDestroy():Void;
}
