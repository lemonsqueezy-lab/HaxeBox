package sandbox;

/** A particle effect system that allows for complex visual effects, such as explosions, muzzle flashes, impact effects, etc. */
@:native("Sandbox.ParticleSystem")
final extern class ParticleSystem extends sandbox.Resource {
    function new():Void;
    /** Whether the particle system is invalid, or has not yet loaded. */
    var IsError(default,never):Bool;
    /** Particle system file name. */
    var Name(default,never):String;
    /** Static bounding box of the resource. */
    var Bounds(default,default):BBox;
    /** How many child particle systems do we have */
    var ChildCount(default,never):Int;
    @:protected function Finalize():Void;
    /** Returns child particle at given index. */
    function GetChild(index:Int):sandbox.ParticleSystem;
    /** Loads a particle system from given file. */
    static function Load(filename:String):sandbox.ParticleSystem;
    /** Load a particle system by file path. */
    static function LoadAsync(filename:String):system.threading.tasks.Task1<sandbox.ParticleSystem>;
}
