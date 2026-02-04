package sandbox.soundscapetrigger;

@:native("Sandbox.SoundscapeTrigger.TriggerType")
extern enum abstract TriggerType(Int) {
    var Point;
    var Sphere;
    var Box;
}
