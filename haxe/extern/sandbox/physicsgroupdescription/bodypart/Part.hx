package sandbox.physicsgroupdescription.bodypart;

@:native("Sandbox.PhysicsGroupDescription.BodyPart.Part")
extern class Part {
    @:protected function new():Void;
    @:protected
    var Surface(default,null):sandbox.Surface;
}
