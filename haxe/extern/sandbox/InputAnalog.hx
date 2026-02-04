package sandbox;

/** An analog input, when fetched, is between -1 and 1 (0 being default) */
@:native("Sandbox.InputAnalog")
extern enum abstract InputAnalog(Int) {
    var RightStickX;
    var RightStickY;
    var LeftStickX;
    var LeftStickY;
    var LeftTrigger;
    var RightTrigger;
}
