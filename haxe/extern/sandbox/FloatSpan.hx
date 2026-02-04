package sandbox;

/** Provides vectorized operations over a span of floats. */
@:native("Sandbox.FloatSpan")
final extern class FloatSpan {
    function new(span:system.Span<Single>):Void;
    function Add(values:system.ReadOnlySpan<Single>):Void;
    function AddScaled(values:system.ReadOnlySpan<Single>, scale:Single):Void;
    function Average():Single;
    function CopyScaled(values:system.ReadOnlySpan<Single>, scale:Single):Void;
    function Max():Single;
    function Min():Single;
    function Scale(scale:Single):Void;
    overload function Set(value:Single):Void;
    overload function Set(values:system.ReadOnlySpan<Single>):Void;
    function Sum():Single;
}
