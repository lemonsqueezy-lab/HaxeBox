package sandbox.utility;

/** Easing functions used for transitions. See https://easings.net/ for examples. */
@:native("Sandbox.Utility.Easing")
final extern class Easing {
    /** Bouncy ease in. */
    static function BounceIn(f:Single):Single;
    /** Bouncy ease in and out. */
    static function BounceInOut(f:Single):Single;
    /** Bouncy ease out. */
    static function BounceOut(f:Single):Single;
    static function EaseIn(f:Single):Single;
    static function EaseInOut(f:Single):Single;
    static function EaseOut(f:Single):Single;
    /** Exponential ease in. */
    static function ExpoIn(f:Single):Single;
    /** Exponential ease in and out. */
    static function ExpoInOut(f:Single):Single;
    /** Exponential ease out. */
    static function ExpoOut(f:Single):Single;
    /** Get an easing function by name (ie, "ease-in"). If the function doesn't exist we return QuadraticInOut */
    static function GetFunction(name:String):sandbox.utility.easing.Function;
    /** Linear easing function, x=y. */
    static function Linear(f:Single):Single;
    /** Quadratic ease in. */
    static function QuadraticIn(f:Single):Single;
    /** Quadratic ease in and out. */
    static function QuadraticInOut(f:Single):Single;
    /** Quadratic ease out. */
    static function QuadraticOut(f:Single):Single;
    /** Sine ease in. */
    static function SineEaseIn(f:Single):Single;
    /** Sine ease in and out. */
    static function SineEaseInOut(f:Single):Single;
    /** Sine ease out. */
    static function SineEaseOut(f:Single):Single;
    static function TryGetFunction(name:String, _function:sandbox.utility.easing.Function):Bool;
}
