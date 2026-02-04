package sandbox.audio;

/** Takes a bunch of sound, changes its volumes, mixes it together, outputs it */
@:native("Sandbox.Audio.Mixer")
extern class Mixer {
    var ChildCount(default,never):Int;
    /** Allows monitoring of the output of the mixer */
    var Meter(default,never):sandbox.audio.AudioMeter;
    /** Unique identifier for this object, for lookup, deserialization etc */
    var Id(default,never):system.Guid;
    /** The display name for this mixer */
    var Name(default,default):String;
    /** Scale the volume of our output by this amount */
    var Volume(default,default):Single;
    /** The maximum amount of voices to play at one time on this mixer */
    var MaxVoices(default,default):Int;
    /** If true then this mixer will use custom occlusion tags. If false we'll use what our parent uses. */
    var OverrideOcclusion(default,default):Bool;
    /** The tags which occlude our physics */
    var OcclusionTags(default,never):sandbox.TagSet;
    /** When 0 the sound will come out of all speakers, when 1 it will be fully spacialized */
    var Spacializing(default,default):Single;
    /** Sounds get quieter as they go further away */
    var DistanceAttenuation(default,default):Single;
    /** How much these sounds can get occluded */
    var Occlusion(default,default):Single;
    /** How much the air absorbs energy from the sound */
    var AirAbsorption(default,default):Single;
    /** Should this be the only mixer that is heard? */
    var Solo(default,default):Bool;
    /** Is this mixer muted? */
    var Mute(default,default):Bool;
    /** The default mixer gets all sounds that don't have a mixer specifically assigned */
    var IsMaster(default,never):Bool;
    static var Master(default,never):sandbox.audio.Mixer;
    static var Default(default,default):sandbox.audio.Mixer;
    /** The amount of processors */
    var ProcessorCount(default,never):Int;
    function AddChild():sandbox.audio.Mixer;
    /** Add a processor to the list */
    function AddProcessor(ap:sandbox.audio.AudioProcessor<Dynamic>):Void;
    /** Add a processor to the list */
    function ClearProcessors():Void;
    function Deserialize(js:system.text.json.nodes.JsonObject, typeLibrary:sandbox.internal.TypeLibrary):Void;
    function Destroy():Void;
    static function FindMixerByGuid(guid:system.Guid):sandbox.audio.Mixer;
    static function FindMixerByName(name:String):sandbox.audio.Mixer;
    function GetChildren():Array<sandbox.audio.Mixer>;
    /** Get an array of occlusion tags our sounds want to hit. May return null if there are none defined! */
    function GetOcclusionTags():system.collections.generic.IReadOnlySet<UInt>;
    /** Get the first processor of a specific type, or null if not found */
    function GetProcessor<T>():T;
    /** Get the current processor list */
    function GetProcessors():Array<sandbox.audio.AudioProcessor<Dynamic>>;
    /** Add a processor to the list */
    function RemoveProcessor(ap:sandbox.audio.AudioProcessor<Dynamic>):Void;
    static function ResetToDefault():Void;
    function Serialize():system.text.json.nodes.JsonObject;
    @:protected function SetMasterOcclusionDefaults():Void;
    /** Stop all sound handles using this mixer */
    function StopAll(fade:Single):Void;
}
