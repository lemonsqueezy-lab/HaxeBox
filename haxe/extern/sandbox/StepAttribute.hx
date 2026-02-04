package sandbox;

/** Mark this property as a stepped value, where the value can only be set to multiples of the step value. */
@:native("Sandbox.StepAttribute")
extern class StepAttribute {
    function new(step:Single):Void;
    var Step(default,never):Single;
    var TypeId(default,never):cs.system.Object;
}
