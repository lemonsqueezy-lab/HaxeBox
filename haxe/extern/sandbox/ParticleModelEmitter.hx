package sandbox;

/** Emits particles in a model */
@:native("Sandbox.ParticleModelEmitter")
final extern class ParticleModelEmitter extends sandbox.ParticleEmitter {
    function new():Void;
    var Target(default,default):sandbox.GameObject;
    var OnEdge(default,default):Bool;
    function Emit(target:sandbox.ParticleEffect):Bool;
}
