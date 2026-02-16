package sandbox.audio;

@:native("Sandbox.Audio.AudioProcessor`1")
extern class AudioProcessor<T> {
    @:protected function new():Void;
    @:protected
    var CurrentState(null,never):T;
}
