package sandbox;

/** A sound event. It can play a set of random sounds with optionally random settings such as volume and pitch. */
@:native("Sandbox.SoundEvent")
extern class SoundEvent extends sandbox.GameResource {
    overload function new():Void;
    overload function new(soundName:String, volume:Single):Void;
    /** Is this sound 2D? */
    var UI(default,default):Bool;
    /** How loud the sound should be. */
    var Volume(default,default):RangedFloat;
    /** The base pitch of the sound. */
    var Pitch(default,default):RangedFloat;
    /** How loud is this sound, affects how far away it can be heard */
    var Decibels(default,default):Int;
    /** Selection strategy to use when picking from multiple sounds. */
    var SelectionMode(default,default):sandbox.soundevent.SoundSelectionMode;
    /** A random sound from the list will be selected to be played. */
    var Sounds(default,default):system.collections.generic.List<sandbox.SoundFile>;
    /** Allow this sound to be occluded by geometry */
    var Occlusion(default,default):Bool;
    /** Allow this sound to trace reflections, allowing it to be heard indirectly */
    var Reflections(default,default):Bool;
    /** Allow this sound to be absorbed by air */
    var AirAbsorption(default,default):Bool;
    /** Allow this sound to be transmitted through geometry */
    var Transmission(default,default):Bool;
    /** The radius of this sound's occlusion in inches. */
    var OcclusionRadius(default,default):Single;
    /** Should the sound fade out over distance */
    var DistanceAttenuation(default,default):Bool;
    /** How many units the sound can be heard from. */
    var Distance(default,default):Single;
    /** The falloff curve for the sound. */
    var Falloff(default,default):sandbox.Curve;
    /** Default mixer to play this sound with if one isn't provided on play. */
    var DefaultMixer(default,default):sandbox.audio.MixerHandle;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
}
