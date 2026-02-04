package sandbox.rendering;

/** Setup for defining gradient fog in a view */
@:native("Sandbox.Rendering.GradientFogSetup")
final extern class GradientFogSetup {
    /** Whether the fog is enabled. */
    var Enabled(default,set):Bool;

    private inline function set_Enabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Enabled = {1}", this, __value);
    }

    /** Start distance of the fog. */
    var StartDistance(default,set):Single;

    private inline function set_StartDistance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.StartDistance = {1}", this, __value);
    }

    /** End distance of the fog. */
    var EndDistance(default,set):Single;

    private inline function set_EndDistance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.EndDistance = {1}", this, __value);
    }

    /** The starting height of the gradient fog. */
    var StartHeight(default,set):Single;

    private inline function set_StartHeight(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.StartHeight = {1}", this, __value);
    }

    /** The ending height of the gradient fog. */
    var EndHeight(default,set):Single;

    private inline function set_EndHeight(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.EndHeight = {1}", this, __value);
    }

    /** The maximum opacity of the gradient fog. */
    var MaximumOpacity(default,set):Single;

    private inline function set_MaximumOpacity(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.MaximumOpacity = {1}", this, __value);
    }

    /** The color of the gradient fog. */
    var Color(default,set):Color;

    private inline function set_Color(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    /** The exponent controlling the distance-based falloff of the fog. */
    var DistanceFalloffExponent(default,set):Single;

    private inline function set_DistanceFalloffExponent(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.DistanceFalloffExponent = {1}", this, __value);
    }

    /** The exponent controlling the vertical falloff of the fog. */
    var VerticalFalloffExponent(default,set):Single;

    private inline function set_VerticalFalloffExponent(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.VerticalFalloffExponent = {1}", this, __value);
    }

    /** Lerp this GradientFogSetup to a another, allowing transition states. */
    function LerpTo(desired:sandbox.rendering.GradientFogSetup, delta:Single, clamp:Bool):sandbox.rendering.GradientFogSetup;
}
