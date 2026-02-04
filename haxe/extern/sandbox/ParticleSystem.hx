package sandbox;

/** A particle effect system that allows for complex visual effects, such as explosions, muzzle flashes, impact effects, etc. */
@:native("Sandbox.ParticleSystem")
final extern class ParticleSystem {
    function new():Void;
    var IsValid(default,never):Bool;
    /** Whether the particle system is invalid, or has not yet loaded. */
    var IsError(default,never):Bool;
    /** Particle system file name. */
    var Name(default,never):String;
    /** Static bounding box of the resource. */
    var Bounds(default,default):BBox;
    /** How many child particle systems do we have */
    var ChildCount(default,never):Int;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** True if this resource has been changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function Finalize():Void;
    /** Returns child particle at given index. */
    function GetChild(index:Int):sandbox.ParticleSystem;
    /** Loads a particle system from given file. */
    static function Load(filename:String):sandbox.ParticleSystem;
    /** Load a particle system by file path. */
    static function LoadAsync(filename:String):system.threading.tasks.Task1<sandbox.ParticleSystem>;
}
