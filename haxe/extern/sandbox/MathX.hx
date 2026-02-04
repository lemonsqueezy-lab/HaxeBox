package sandbox;

/** A class to add functionality to the math library that System.Math and System.MathF don't provide. A lot of these methods are also extensions, so you can use for example `int i = 1.0f.FloorToInt();` */
@:native("Sandbox.MathX")
final extern class MathX {
    /** Returns true if given value is close to given value within given tolerance. */
    static function AlmostEqual(value:Single, b:Single, within:Single):Bool;
    /** Adds or subtracts given amount based on whether the input is smaller of bigger than the target. */
    static function Approach(f:Single, target:Single, delta:Single):Single;
    /** Rounds up given float to next integer value. */
    static function CeilToInt(f:Single):Int;
    /** Clamp a float between 2 given extremes. If given value is lower than the given minimum value, returns the minimum value, etc. */
    static function Clamp(v:Single, min:Single, max:Single):Single;
    /** Convert degrees to radians. 180 degrees is (roughly 3.14) radians, etc. */
    static function DegreeToRadian(deg:Single):Single;
    /** Difference between two angles in degrees. Will always be between -180 and +180. */
    static function DeltaDegrees(from:Single, to:Single):Single;
    /** Difference between two angles in radians. Will always be between -PI and +PI. */
    static function DeltaRadians(from:Single, to:Single):Single;
    /** Smoothly approach the target value using exponential decay. Cheaper than SmoothDamp but doesn't track velocity for momentum. Good for non-physical smoothing. */
    static function ExponentialDecay(current:Single, target:Single, halflife:Single, deltaTime:Single):Single;
    /** Remove the fractional part of given floating point number */
    static function Floor(f:Single):Single;
    /** Remove the fractional part and return the float as an integer. */
    static function FloorToInt(f:Single):Int;
    /** Convert gradians to degrees. 100 gradian is 90 degrees, 200 gradian is 180 degrees, etc. */
    static function GradiansToDegrees(grad:Single):Single;
    /** Convert gradians to radians. 200 gradian is (roughly 3.14) radians, etc. */
    static function GradiansToRadians(grad:Single):Single;
    /** Convert inches to meters. */
    static function InchToMeter(inches:Single):Single;
    /** Convert inches to millimeters. */
    static function InchToMillimeter(inches:Single):Single;
    /** Performs linear interpolation on floating point numbers. */
    static overload function Lerp(from:Float, to:Float, frac:Float, clamp:Bool):Float;
    static overload function Lerp(from:Single, to:Single, frac:Single, clamp:Bool):Single;
    /** Linearly interpolates between two angles in degrees, taking the shortest arc. */
    static function LerpDegrees(from:Single, to:Single, frac:Single, clamp:Bool):Single;
    static function LerpDegreesTo(from:Single, to:Single, frac:Single, clamp:Bool):Single;
    /** Performs inverse of a linear interpolation, that is, the return value is the fraction of a linear interpolation. */
    static function LerpInverse(value:Single, from:Single, to:Single, clamp:Bool):Single;
    /** Linearly interpolates between two angles in radians, taking the shortest arc. */
    static function LerpRadians(from:Single, to:Single, frac:Single, clamp:Bool):Single;
    static function LerpRadiansTo(from:Single, to:Single, frac:Single, clamp:Bool):Single;
    /** Performs multiple linear interpolations at the same time. */
    static overload function LerpTo(from:Array<Single>, to:Array<Single>, delta:Single, clamp:Bool):Array<Single>;
    static overload function LerpTo(from:Single, to:Single, frac:Single, clamp:Bool):Single;
    /** Convert meters to inches. */
    static function MeterToInch(meters:Single):Single;
    /** Convert millimeters to inches. */
    static function MillimeterToInch(millimeters:Single):Single;
    /** Convert angle to between 0 - 360 */
    static function NormalizeDegrees(degree:Single):Single;
    /** Convert radians to degrees. 180 degrees is (roughly 3.14) radians, etc. */
    static function RadianToDegree(rad:Single):Single;
    /** Remap an integer value from a one range to another */
    static overload function Remap(value:Int, oldLow:Int, oldHigh:Int, newLow:Int, newHigh:Int):Int;
    static overload function Remap(value:Single, oldLow:Single, oldHigh:Single, newLow:Single, newHigh:Single):Single;
    static overload function Remap(value:Float, oldLow:Float, oldHigh:Float, newLow:Float, newHigh:Float, clamp:Bool):Float;
    static overload function Remap(value:Single, oldLow:Single, oldHigh:Single, newLow:Single, newHigh:Single, clamp:Bool):Single;
    static function SmoothDamp(current:Single, target:Single, velocity:Single, smoothTime:Single, deltaTime:Single):Single;
    /** Snap number to grid */
    static overload function SnapToGrid(f:Int, gridSize:Int):Int;
    static overload function SnapToGrid(f:Single, gridSize:Single):Single;
    /** Given a sphere and a field of view, how far from the camera should we be to fully see the sphere? */
    static function SphereCameraDistance(radius:Single, fieldOfView:Single):Single;
    static function SpringDamp(current:Single, target:Single, velocity:Single, deltaTime:Single, frequency:Single, damping:Single):Single;
    /** Does what you expected to happen when you did "a % b" */
    static function UnsignedMod(a:Single, b:Single):Single;
}
