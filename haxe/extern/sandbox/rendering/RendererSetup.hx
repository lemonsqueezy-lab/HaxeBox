package sandbox.rendering;

/** When manually rendering a Renderer this will let you override specific elements of that render. This means you can use most of the Renderer's properties, but override some without disturbing the Renderer itself. */
@:native("Sandbox.Rendering.RendererSetup")
final extern class RendererSetup {
    var Transform(default,set):Null<Transform>;

    private inline function set_Transform(value:Null<Transform>):Null<Transform> {
        var __value:Null<Transform> = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    var Color(default,set):Null<Color>;

    private inline function set_Color(value:Null<Color>):Null<Color> {
        var __value:Null<Color> = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    var Material(default,set):sandbox.Material;

    private inline function set_Material(value:sandbox.Material):sandbox.Material {
        var __value:sandbox.Material = cast value;
        return untyped __cs__("{0}.Material = {1}", this, __value);
    }

}
