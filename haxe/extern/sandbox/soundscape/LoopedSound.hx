package sandbox.soundscape;

@:native("Sandbox.Soundscape.LoopedSound")
extern class LoopedSound {
    function new():Void;
    /** The sound to play. It should have the looped flag set. */
    var SoundFile(default,default):sandbox.SoundFile;
    /** Sound volume. */
    var Volume(default,default):RangedFloat;
    /** If true then the sound will come from a random direction in the world */
    function ToString():String;
}
