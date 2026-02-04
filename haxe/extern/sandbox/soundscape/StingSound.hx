package sandbox.soundscape;

@:native("Sandbox.Soundscape.StingSound")
extern class StingSound {
    function new():Void;
    /** The sound event to play. */
    var SoundFile(default,default):sandbox.SoundEvent;
    /** How many instances of this sting should exist. */
    var InstanceCount(default,default):Int;
    /** How often should this sound be repeated. */
    var RepeatTime(default,default):RangedFloat;
    /** How far away from the camera should the sound play. */
    var Distance(default,default):RangedFloat;
    function ToString():String;
}
