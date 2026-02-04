package sandbox;

@:native("Sandbox.Particle")
extern class Particle {
    function new():Void;
    var LifeTimeRemaining(default,never):Single;
    var Position(default,default):Vector3;
    var Size(default,default):Vector3;
    var Velocity(default,default):Vector3;
    var Color(default,default):Color;
    var OverlayColor(default,default):Color;
    var Alpha(default,default):Single;
    var BornTime(default,default):Single;
    var Age(default,default):Single;
    var Radius(default,default):Single;
    var Angles(default,default):Angles;
    var Sequence(default,default):Int;
    var SequenceTime(default,default):Vector3;
    var Frame(default,default):Int;
    var Random01(default,default):Single;
    var Random02(default,default):Single;
    var Random03(default,default):Single;
    var Random04(default,default):Single;
    var Random05(default,default):Single;
    var Random06(default,default):Single;
    var Random07(default,default):Single;
    var HitPos(default,default):Vector3;
    var HitNormal(default,default):Vector3;
    var HitTime(default,default):Single;
    var LastHitTime(default,default):Single;
    var StartPosition(default,default):Vector3;
    var LifeDelta(default,default):Single;
    var DeathTime(default,default):Single;
    var TimeScale(default,default):Single;
    static var Pool(default,default):system.collections.generic.Queue<sandbox.Particle>;
    /** Add a listener. */
    function AddListener(i:sandbox.particle.BaseListener, sourceComponent:sandbox.Component):Void;
    function ApplyDamping(amount:Single):Void;
    static function Create():sandbox.Particle;
    /** Get an arbituary data value */
    function Get<T>(key:String):T;
    function MoveWithCollision(bounce:Single, friction:Single, bumpiness:Single, push:Single, die:Bool, dt:Single, radius:Single, trace:sandbox.SceneTrace):Bool;
    function Rand(seed:Int, line:Int):Single;
    /** Remove a listener */
    function RemoveListener(i:sandbox.particle.BaseListener):Void;
    function Set<T>(key:String, tvalue:T):Void;
}
