package sandbox;

/** Contains a haptic effect, which consists of patterns for the controller and triggers. */
@:native("Sandbox.HapticEffect")
extern class HapticEffect {
    function new(controllerPattern:sandbox.HapticPattern, leftTriggerPattern:sandbox.HapticPattern, rightTriggerPattern:sandbox.HapticPattern):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var AmplitudeScale(never,default):Single;
    var FrequencyScale(never,default):Single;
    var LengthScale(never,default):Single;
    /** A haptic pattern that represents a light, soft impact. */
    static var SoftImpact(default,never):sandbox.HapticEffect;
    /** A haptic pattern that represents a hard, sudden impact. */
    static var HardImpact(default,never):sandbox.HapticEffect;
    /** Applies a simple rumble to the controller. */
    static var Rumble(default,never):sandbox.HapticEffect;
    /** Applies a simple rumble to the left trigger. */
    static var RumbleLeftTrigger(default,never):sandbox.HapticEffect;
    /** Applies a simple rumble to the right trigger. */
    static var RumbleRightTrigger(default,never):sandbox.HapticEffect;
    /** A haptic effect that feels like a heartbeat. */
    static var Heartbeat(default,never):sandbox.HapticEffect;
    var ControllerPattern(default,default):sandbox.HapticPattern;
    var LeftTriggerPattern(default,default):sandbox.HapticPattern;
    var RightTriggerPattern(default,default):sandbox.HapticPattern;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.HapticEffect):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
