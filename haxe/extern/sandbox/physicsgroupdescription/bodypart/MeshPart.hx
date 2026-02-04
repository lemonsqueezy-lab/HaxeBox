package sandbox.physicsgroupdescription.bodypart;

@:native("Sandbox.PhysicsGroupDescription.BodyPart.MeshPart")
extern class MeshPart {
    var Bounds(default,default):BBox;
    @:protected
    var Surfaces(default,null):Array<sandbox.Surface>;
    @:protected
    var Surface(default,null):sandbox.Surface;
    /** For debug rendering */
    function GetTriangles():system.collections.generic.IEnumerable<sandbox.Triangle>;
}
