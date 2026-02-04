package sandbox;

/** Describes a gradient between multiple colors */
@:native("Sandbox.Gradient")
final extern class Gradient {
    overload function new():Void;
    overload function new(frames:Array<sandbox.gradient.ColorFrame>):Void;
    /** The blend mode */
    var Blending(default,set):sandbox.gradient.BlendMode;

    private inline function set_Blending(value:sandbox.gradient.BlendMode):sandbox.gradient.BlendMode {
        var __value:sandbox.gradient.BlendMode = cast value;
        return untyped __cs__("{0}.Blending = {1}", this, __value);
    }

    /** A list of color stops, which should be ordered by time */
    var Colors(default,set):system.collections.immutable.ImmutableList<sandbox.gradient.ColorFrame>;

    private inline function set_Colors(value:system.collections.immutable.ImmutableList<sandbox.gradient.ColorFrame>):system.collections.immutable.ImmutableList<sandbox.gradient.ColorFrame> {
        var __value:system.collections.immutable.ImmutableList<sandbox.gradient.ColorFrame> = cast value;
        return untyped __cs__("{0}.Colors = {1}", this, __value);
    }

    /** A list of color stops, which should be ordered by time */
    var Alphas(default,set):system.collections.immutable.ImmutableList<sandbox.gradient.AlphaFrame>;

    private inline function set_Alphas(value:system.collections.immutable.ImmutableList<sandbox.gradient.AlphaFrame>):system.collections.immutable.ImmutableList<sandbox.gradient.AlphaFrame> {
        var __value:system.collections.immutable.ImmutableList<sandbox.gradient.AlphaFrame> = cast value;
        return untyped __cs__("{0}.Alphas = {1}", this, __value);
    }

    var Item(default,set):sandbox.gradient.ColorFrame;

    private inline function set_Item(value:sandbox.gradient.ColorFrame):sandbox.gradient.ColorFrame {
        var __value:sandbox.gradient.ColorFrame = cast value;
        return untyped __cs__("{0}.Item = {1}", this, __value);
    }

    /** Add an alpha position */
    overload function AddAlpha(keyframe:sandbox.gradient.AlphaFrame):Int;
    overload function AddAlpha(x:Single, alpha:Single):Int;
    overload function AddColor(keyframe:sandbox.gradient.ColorFrame):Int;
    overload function AddColor(x:Single, color:Color):Int;
    /** Evaluate the blend using the time, which is generally between 0 and 1 */
    function Evaluate(time:Single):Color;
    /** If the lists aren't in time order for some reason, this will fix them. This should really just be called when serializing, and in every other situation we should assume they're okay. */
    function FixOrder():Void;
    /** Create a gradient from colors spaced out evenly */
    static function FromColors(colors:Array<Color>):sandbox.Gradient;
    /** Make a copy of this with changed keyframes */
    function WithFrames(frames:system.collections.immutable.ImmutableList<sandbox.gradient.ColorFrame>):sandbox.Gradient;
}
