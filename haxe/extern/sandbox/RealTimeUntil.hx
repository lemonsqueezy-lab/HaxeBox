package sandbox;

/** A convenience struct to easily manage a time countdown, based on . Typical usage would see you assigning to a variable of this type a necessary amount of seconds. Then the struct would return the time countdown, or can be used as a bool i.e.: RealTimeUntil nextAttack = 10; if ( nextAttack ) { /*Do something* / } */
@:native("Sandbox.RealTimeUntil")
final extern class RealTimeUntil {
    /** Time to which we are counting down to, based on . */
    var Absolute(default,never):Float;
    /** The actual countdown, in seconds. */
    var Relative(default,never):Float;
    /** Amount of seconds passed since the countdown started. */
    var Passed(default,never):Float;
    /** The countdown, but as a fraction, i.e. a value from 0 (start of countdown) to 1 (end of countdown) */
    var Fraction(default,never):Float;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.RealTimeUntil):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
