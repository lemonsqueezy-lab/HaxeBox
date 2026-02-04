package sandbox.beameffect;

/** Represents an individual beam instance within the effect. */
@:native("Sandbox.BeamEffect.BeamInstance")
extern class BeamInstance {
    function new():Void;
    /** Returns the normalized lifetime of the beam, ranging from 0 (just born) to 1 (expired). */
    var Delta(default,never):Single;
    var StartPosition(default,default):Vector3;
    var EndPosition(default,default):Vector3;
    var Renderer(default,default):sandbox.LineRenderer;
    var TimeBorn(default,default):Single;
    var TimeDie(default,default):Single;
    var RandomSeed(default,default):Int;
    /** Destroys the beam instance, cleaning up its resources. */
    function Destroy():Void;
}
