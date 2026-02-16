package sandbox;

/** A particle snapshot that can be created procedurally. Contains a set of vertices that particle effects can address. */
@:native("Sandbox.ParticleSnapshot")
final extern class ParticleSnapshot extends sandbox.Resource {
    /** Create new empty procedural particle snapshot. */
    function new():Void;
    @:protected function Finalize():Void;
    /** Update this snapshot with a list of vertices. */
    function Update(vertices:system.Span<sandbox.particlesnapshot.Vertex>):Void;
}
