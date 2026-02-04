package sandbox.physicsgroupdescription.bodypart;

@:native("Sandbox.PhysicsGroupDescription.BodyPart.SpherePart")
extern class SpherePart {
    var Sphere(default,default):sandbox.Sphere;
    @:protected
    var Surface(default,null):sandbox.Surface;
}
