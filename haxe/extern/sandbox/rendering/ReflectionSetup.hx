package sandbox.rendering;

/** Allows special setup for reflections, such as offsetting the reflection plane */
@:native("Sandbox.Rendering.ReflectionSetup")
final extern class ReflectionSetup {
    /** If we can't render the reflection and this is set, we'll clear the render target to this color */
    var FallbackColor(default,set):Null<Color>;

    private inline function set_FallbackColor(value:Null<Color>):Null<Color> {
        var __value:Null<Color> = cast value;
        return untyped __cs__("{0}.FallbackColor = {1}", this, __value);
    }

    var ViewSetup(default,set):sandbox.rendering.ViewSetup;

    private inline function set_ViewSetup(value:sandbox.rendering.ViewSetup):sandbox.rendering.ViewSetup {
        var __value:sandbox.rendering.ViewSetup = cast value;
        return untyped __cs__("{0}.ViewSetup = {1}", this, __value);
    }

    var ClipOffset(default,set):Single;

    private inline function set_ClipOffset(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ClipOffset = {1}", this, __value);
    }

    var RenderBehind(default,set):Bool;

    private inline function set_RenderBehind(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.RenderBehind = {1}", this, __value);
    }

}
