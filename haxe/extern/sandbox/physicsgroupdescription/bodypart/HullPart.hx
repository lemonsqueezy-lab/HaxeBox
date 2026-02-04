package sandbox.physicsgroupdescription.bodypart;

@:native("Sandbox.PhysicsGroupDescription.BodyPart.HullPart")
extern class HullPart {
    var Bounds(default,default):BBox;
    @:protected
    var Surface(default,null):sandbox.Surface;
    /** For debug rendering */
    function GetLines():system.collections.generic.IEnumerable<Line>;
    function GetPoints():system.collections.generic.IEnumerable<Vector3>;
}
