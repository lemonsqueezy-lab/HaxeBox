package sandbox;

/** Plays a soundscape when the listener enters the trigger area. */
@:native("Sandbox.SoundscapeTrigger")
extern class SoundscapeTrigger extends sandbox.Component {
    function new():Void;
    /** Determines when/where the soundscape can be heard. */
    var Type(default,default):sandbox.soundscapetrigger.TriggerType;
    var Soundscape(default,default):sandbox.Soundscape;
    /** The mixer that the soundscape will play on. */
    var TargetMixer(default,default):sandbox.audio.MixerHandle;
    /** When true the soundscape will keep playing after exiting the area, and will only stop playing once another soundscape takes over. */
    var StayActiveOnExit(default,default):Bool;
    var Volume(default,default):Single;
    /** The radius of the Soundscape when is set to . */
    var Radius(default,default):Single;
    /** The size of the Soundscape when is set to . */
    var BoxSize(default,default):Vector3;
    var Playing(default,never):Bool;
    @:protected function DrawGizmos():Void;
    @:protected function OnDestroy():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnUpdate():Void;
    /** Return true if they should hear this soundscape when in this position */
    function TestListenerPosition(position:Vector3):Bool;
}
