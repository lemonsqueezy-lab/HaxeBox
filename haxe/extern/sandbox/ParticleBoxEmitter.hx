package sandbox;

/** Emits particles within a box shape. */
@:native("Sandbox.ParticleBoxEmitter")
final extern class ParticleBoxEmitter extends sandbox.ParticleEmitter {
    function new():Void;
    var Size(default,default):Vector3;
    var OnEdge(default,default):Bool;
    @:protected function DrawGizmos():Void;
    function Emit(target:sandbox.ParticleEffect):Bool;
}
