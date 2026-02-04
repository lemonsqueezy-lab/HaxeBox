package sandbox;

/** A sound event. It can play a set of random sounds with optionally random settings such as volume and pitch. */
@:native("Sandbox.SoundEvent")
extern class SoundEvent {
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
    var ResourceVersion(default,never):Int;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
}
