package sandbox.audio;

@:native("Sandbox.Audio.PerChannel`1")
final extern class PerChannel<T> {
    function new():Void;
    var Value(default,never):Array<T>;
    function Get(i:sandbox.audio.AudioChannel):T;
    function Set(i:sandbox.audio.AudioChannel, value:T):Void;
}
