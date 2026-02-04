package sandbox;

/** A handle to a sound that is currently playing. You can use this to control the sound's position, volume, pitch etc. */
@:native("Sandbox.SoundHandle")
extern class SoundHandle {
    /** Position of the sound. */
    var Position(default,default):Vector3;
    /** The direction the sound is facing */
    var Rotation(default,default):Rotation;
    /** This sound's transform */
    var Transform(default,default):Transform;
    /** Volume of the sound. */
    var Volume(default,default):Single;
    /** A debug name to help identify the sound */
    var Name(default,default):String;
    /** How 3d the sound should be. 0 means no 3d, 1 means fully */
    var SpacialBlend(default,default):Single;
    /** How many units the sound can be heard from. */
    var Distance(default,default):Single;
    /** The falloff curve for the sound. */
    var Falloff(default,default):sandbox.Curve;
    /** The fadeout curve for when the sound stops. */
    var Fadeout(default,default):sandbox.Curve;
    var Decibels(default,default):Single;
    /** Pitch of the sound. */
    var Pitch(default,default):Single;
    /** Whether the sound is currently playing or not. */
    var IsPlaying(default,never):Bool;
    /** Whether the sound is currently paused or not. */
    var Paused(default,default):Bool;
    /** Sound is done */
    var Finished(default,default):Bool;
    /** Enable the sound reflecting off surfaces */
    var Reflections(default,default):Bool;
    /** Allow this sound to be occluded by geometry etc */
    var Occlusion(default,default):Bool;
    /** The radius of this sound's occlusion, allow for partial occlusion */
    var OcclusionRadius(default,default):Single;
    /** Should the sound fade out over distance */
    var DistanceAttenuation(default,default):Bool;
    /** Should the sound get absorbed by air, so it sounds different at distance */
    var AirAbsorption(default,default):Bool;
    /** Should the sound transmit through walls, doors etc */
    var Transmission(default,default):Bool;
    /** Which mixer do we want to write to */
    var TargetMixer(default,default):sandbox.audio.Mixer;
    /** How many samples per second? */
    var SampleRate(default,never):Int;
    /** True if the sound has been stopped */
    var IsStopped(default,never):Bool;
    var ElapsedTime(default,never):Single;
    /** The current time of the playing sound in seconds. Note: for some formats seeking may be expensive, and some may not support it at all. */
    var Time(default,default):Single;
    /** Place the listener at 0,0,0 facing 1,0,0. */
    var ListenLocal(default,default):Bool;
    /** If true, then this sound won't be played unless voice_loopback is 1. The assumption is that it's the local user's voice. Amplitude and visme data will still be available! */
    var Loopback(default,default):Bool;
    /** Measure of audio loudness. */
    var Amplitude(default,default):Single;
    var IsValid(default,never):Bool;
    /** Update our position every frame relative to our parent */
    var FollowParent(default,default):Bool;
    /** If we're following a parent, our position will be this relative to them. */
    var LocalTransform(default,default):Transform;
    /** If set with a parent and is true, we will update our position to match the parent's world position. You can use to set an offset from the parent's position. Setting a parent also allows you to use GameObject.StopAllSounds on the parent to stop all sounds that are following it. This is set automatically when calling on a GameObject, but you can set it manually if you want to change the parent of an existing sound handle. */
    var Parent(default,default):sandbox.GameObject;
    /** Access lipsync processing. */
    var LipSync(default,never):sandbox.soundhandle.LipSyncAccessor;
    /** Clear our parent - stop following */
    function ClearParent():Void;
    function Dispose():Void;
    @:protected function Finalize():Void;
    static function GetActive(handles:system.collections.generic.List<sandbox.SoundHandle>):Void;
    /** Tell the SoundHandle to follow this GameObject's position */
    function SetParent(obj:sandbox.GameObject):Void;
    function Stop(fadeTime:Single):Void;
    /** Called to push changes to a sound immediately, rather than waiting for the next tick. You should call this if you make changes to a sound. */
    function Update():Void;
}
