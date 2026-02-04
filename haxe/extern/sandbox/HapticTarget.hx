package sandbox;

/** Places you can trigger haptics on */
@:native("Sandbox.HapticTarget")
extern enum abstract HapticTarget(Int) {
    var Controller;
    var LeftTrigger;
    var RightTrigger;
}
