package sandbox.physicsgroupdescription.bodypart;

@:native("Sandbox.PhysicsGroupDescription.BodyPart.HullPart")
extern class HullPart extends sandbox.physicsgroupdescription.bodypart.Part {
    var Bounds(default,default):BBox;
    /** For debug rendering */
    function GetLines():system.collections.generic.IEnumerable<Line>;
    function GetPoints():system.collections.generic.IEnumerable<Vector3>;
}
