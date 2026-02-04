package sandbox;

/** Records and transmits voice/microphone input to other players. */
@:native("Sandbox.Voice")
extern class Voice {
    function new():Void;
    var Volume(default,default):Single;
    var Mode(default,default):sandbox.voice.ActivateMode;
    var PushToTalkInput(default,default):String;
    var WorldspacePlayback(default,default):Bool;
    var Loopback(default,default):Bool;
    var LipSync(default,default):Bool;
    var Renderer(default,default):sandbox.SkinnedModelRenderer;
    var MorphScale(default,default):Single;
    var MorphSmoothTime(default,default):Single;
    /** How long has it been since this sound played? */
    var LastPlayed(default,never):sandbox.RealTimeSince;
    /** Laughter score for the current audio frame, between 0 and 1 */
    var LaughterScore(default,never):Single;
    var VoiceMixer(default,default):sandbox.audio.MixerHandle;
    var TargetMixer(default,default):sandbox.audio.Mixer;
    var Distance(default,default):Single;
    var Falloff(default,default):sandbox.Curve;
    /** A list of 15 lipsync viseme weights. Requires to be enabled. */
    var Visemes(default,never):system.collections.generic.IReadOnlyList<Single>;
    var IsRecording(default,never):Bool;
    /** Returns true if the mic is listening. Even if it's listening, it might not be playing - because it will only record and transmit if it can hear sound. */
    var IsListening(default,default):Bool;
    /** Measure of audio loudness. */
    var Amplitude(default,never):Single;
    /** The scene this Component is in. This is a shortcut for `GameObject.Scene`. */
    var Scene(default,never):sandbox.Scene;
    /** The transform of the GameObject this component belongs to. Components don't have their own transforms but they can access the transform of the GameObject they belong to. This is a shortcut for `GameObject.Transform`. */
    var Transform(default,never):sandbox.GameTransform;
    /** The GameObject this component belongs to. */
    var GameObject(default,never):sandbox.GameObject;
    /** Allow creating tasks that are automatically cancelled when the GameObject is destroyed. */
    @:protected
    var Task(null,never):sandbox.TaskSource;
    /** Access components on this component's GameObject */
    var Components(default,never):sandbox.ComponentList;
    /** The enable state of this . This doesn't tell you whether the component is actually active because its parent might be disabled. This merely tells you what the component wants to be. You should use to determine whether the object is truly active in the scene. */
    var Enabled(default,default):Bool;
    /** True if this Component is enabled, and all of its ancestor GameObjects are enabled */
    var Active(default,never):Bool;
    var IsValid(default,never):Bool;
    var OnComponentEnabled(default,default):system.Action;
    var OnComponentStart(default,default):system.Action;
    var OnComponentUpdate(default,default):system.Action;
    var OnComponentFixedUpdate(default,default):system.Action;
    var OnComponentDisabled(default,default):system.Action;
    var OnComponentDestroy(default,default):system.Action;
    var Tags(default,never):sandbox.ITagSet;
    /** Allows drawing of temporary debug shapes and text in the scene */
    var DebugOverlay(default,never):sandbox.DebugOverlaySystem;
    var Flags(default,default):sandbox.ComponentFlags;
    var Id(default,never):system.Guid;
    /** The local transform of the game object. */
    var LocalTransform(default,default):Transform;
    /** The local position of the game object. */
    var LocalPosition(default,default):Vector3;
    /** The local rotation of the game object. */
    var LocalRotation(default,default):Rotation;
    /** The local scale of the game object. */
    var LocalScale(default,default):Vector3;
    var Network(default,never):sandbox.gameobject.NetworkAccessor;
    /** True if this is a networked object and is owned by another client. This means that we're not controlling this object, so shouldn't try to move it or anything. */
    var IsProxy(default,never):Bool;
    /** The version of the component. Used by . */
    var ComponentVersion(default,never):Int;
    /** The world transform of the game object. */
    var WorldTransform(default,default):Transform;
    /** The world position of the game object. */
    var WorldPosition(default,default):Vector3;
    /** The world rotation of the game object. */
    var WorldRotation(default,default):Rotation;
    /** The world scale of the game object. */
    var WorldScale(default,default):Vector3;
    /** Exclude these connection from hearing our voice. */
    @:protected function ExcludeFilter():system.collections.generic.IEnumerable<sandbox.Connection>;
    @:protected function OnUpdate():Void;
    /** Whether we want to hear voice from a particular connection. */
    @:protected function ShouldHearVoice(connection:sandbox.Connection):Bool;
}
