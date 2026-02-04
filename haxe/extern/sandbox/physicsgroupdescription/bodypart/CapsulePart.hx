package sandbox.physicsgroupdescription.bodypart;

@:native("Sandbox.PhysicsGroupDescription.BodyPart.CapsulePart")
extern class CapsulePart {
    var Capsule(default,default):Capsule;
    @:protected
    var Surface(default,null):sandbox.Surface;
}
