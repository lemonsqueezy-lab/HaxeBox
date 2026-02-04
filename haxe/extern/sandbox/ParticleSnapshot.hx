package sandbox;

/** A particle snapshot that can be created procedurally. Contains a set of vertices that particle effects can address. */
@:native("Sandbox.ParticleSnapshot")
final extern class ParticleSnapshot {
    /** Create new empty procedural particle snapshot. */
    function new():Void;
    var IsValid(default,never):Bool;
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
    /** Update this snapshot with a list of vertices. */
    function Update(vertices:system.Span<sandbox.particlesnapshot.Vertex>):Void;
}
