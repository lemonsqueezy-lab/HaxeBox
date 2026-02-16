package sandbox;

/** Creates particles. Should be attached to a . */
@:native("Sandbox.ParticleEmitter")
extern class ParticleEmitter extends sandbox.Component {
    @:protected function new():Void;
    var Loop(default,default):Bool;
    var DestroyOnEnd(default,default):Bool;
    var Duration(default,default):Single;
    var Delay(default,default):Single;
    /** How many particles to emit, in a burst */
    var Burst(default,default):Single;
    /** How many particles to emit over time */
    var Rate(default,default):sandbox.ParticleFloat;
    /** How many particles to emit per 100 units moved */
    var RateOverDistance(default,default):Single;
    /** 0-1, the life time of the emitter */
    var Delta(default,never):Single;
    /** True if we're doing a burst */
    var IsBursting(default,never):Bool;
    /** 0-1, a random number to be used for this loop of the emitter */
    var EmitRandom(default,never):Single;
    var time(default,default):Single;
    function Emit(target:sandbox.ParticleEffect):Bool;
    @:protected function EmitOverDistance():Void;
    /** Allows child emitters to override how many particles are in a burst */
    @:protected function GetBurstCount():Int;
    /** Allows child emitters to override how many particles are in a rate */
    @:protected function GetRateCount():Int;
    @:protected function OnBurst():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    function ResetEmitter():Void;
}
