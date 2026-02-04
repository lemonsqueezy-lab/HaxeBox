package sandbox;

/** Contains a haptic pattern, which consists of frequency and amplitude values that can change over time. */
@:native("Sandbox.HapticPattern")
extern class HapticPattern {
    /** Contains a haptic pattern, which consists of frequency and amplitude values that can change over time. */
    function new(Length:Single, FrequencyCurve:sandbox.Curve, AmplitudeCurve:sandbox.Curve):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Length(default,default):Single;
    var FrequencyCurve(default,default):sandbox.Curve;
    var AmplitudeCurve(default,default):sandbox.Curve;
    var Position(default,never):Int;
    /** A haptic pattern that represents a light, soft impact. */
    static var SoftImpact(default,never):sandbox.HapticPattern;
    /** A haptic pattern that represents a hard, sudden impact. */
    static var HardImpact(default,never):sandbox.HapticPattern;
    /** A haptic pattern that represents a constant low-frequency rumble. */
    static var Rumble(default,never):sandbox.HapticPattern;
    /** A haptic pattern that feels like a heartbeat. */
    static var Heartbeat(default,never):sandbox.HapticPattern;
    var LengthScale(default,default):Single;
    var FrequencyScale(default,default):Single;
    var AmplitudeScale(default,default):Single;
    function Deconstruct(Length:Single, FrequencyCurve:sandbox.Curve, AmplitudeCurve:sandbox.Curve):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.HapticPattern):Bool;
    function GetHashCode():Int;
    function GetValue(t:Single, frequency:Single, amplitude:Single):Void;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
