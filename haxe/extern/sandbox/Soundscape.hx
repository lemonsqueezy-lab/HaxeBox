package sandbox;

/** A soundscape is used for environmental ambiance of a map by playing a set of random sounds at given intervals. */
@:native("Sandbox.Soundscape")
extern class Soundscape extends sandbox.GameResource {
    function new():Void;
    /** All sound volumes in this soundscape will be scaled by this value. */
    var MasterVolume(default,default):RangedFloat;
    /** Sounds that are played constantly on a loop. */
    var LoopedSounds(default,default):system.collections.generic.List<sandbox.soundscape.LoopedSound>;
    /** Sounds that are played at intervals. */
    var StingSounds(default,default):system.collections.generic.List<sandbox.soundscape.StingSound>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
}
