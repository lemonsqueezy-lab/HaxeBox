package sandbox;

/** A convenience struct to easily measure time since an event last happened, based on . Typical usage would see you assigning 0 to a variable of this type to reset the timer. Then the struct would return time since the last reset. i.e.: RealTimeSince lastUsed = 0; if ( lastUsed > 10 ) { /*Do something* / } */
@:native("Sandbox.RealTimeSince")
final extern class RealTimeSince {
    /** Time at which the timer reset happened, based on . */
    var Absolute(default,never):Float;
    /** Time passed since last reset, in seconds. */
    var Relative(default,never):Single;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(o:sandbox.RealTimeSince):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
