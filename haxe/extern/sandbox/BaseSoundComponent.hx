package sandbox;

@:native("Sandbox.BaseSoundComponent")
extern class BaseSoundComponent extends sandbox.Component {
    @:protected function new():Void;
    /** The mixer we want this sound to play through */
    var TargetMixer(default,default):sandbox.audio.MixerHandle;
    var SoundEvent(default,default):sandbox.SoundEvent;
    var PlayOnStart(default,default):Bool;
    var StopOnNew(default,default):Bool;
    var SoundOverride(default,default):Bool;
    var Volume(default,default):Single;
    var Pitch(default,default):Single;
    var Force2d(default,default):Bool;
    var Repeat(default,default):Bool;
    var MinRepeatTime(default,default):Single;
    var MaxRepeatTime(default,default):Single;
    var DistanceAttenuationOverride(default,default):Bool;
    var DistanceAttenuation(default,default):Bool;
    var Distance(default,default):Single;
    var Falloff(default,default):sandbox.Curve;
    var OcclusionOverride(default,default):Bool;
    var Occlusion(default,default):Bool;
    var OcclusionRadius(default,default):Single;
    var ReflectionOverride(default,default):Bool;
    var Reflections(default,default):Bool;
    @:protected
    var SoundHandle(null,null):sandbox.SoundHandle;
    @:protected function ApplyOverrides(h:sandbox.SoundHandle):Void;
    function StartSound():Void;
    function StopSound():Void;
    @:protected function TestSound():Void;
}
