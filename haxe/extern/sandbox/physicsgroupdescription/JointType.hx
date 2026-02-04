package sandbox.physicsgroupdescription;

@:native("Sandbox.PhysicsGroupDescription.JointType")
extern enum abstract JointType(Int) {
    var Ball;
    var Hinge;
    var Slider;
    var Fixed;
}
