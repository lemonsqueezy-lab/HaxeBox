package sandbox;

/** Mark this property as a stepped value, where the value can only be set to multiples of the step value. */
@:native("Sandbox.StepAttribute")
extern class StepAttribute extends system.Attribute {
    function new(step:Single):Void;
    var Step(default,never):Single;
}
