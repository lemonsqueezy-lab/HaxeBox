package sandbox.rendering;

/** When manually rendering a camera this will let you override specific elements of that render. This means you can use most of the camera's properties, but override some without disturbing the camera itself. */
@:native("Sandbox.Rendering.ViewSetup")
final extern class ViewSetup {
    var Transform(default,set):Null<Transform>;

    private inline function set_Transform(value:Null<Transform>):Null<Transform> {
        var __value:Null<Transform> = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    var FieldOfView(default,set):Null<Single>;

    private inline function set_FieldOfView(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.FieldOfView = {1}", this, __value);
    }

    var ZNear(default,set):Null<Single>;

    private inline function set_ZNear(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.ZNear = {1}", this, __value);
    }

    var ZFar(default,set):Null<Single>;

    private inline function set_ZFar(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.ZFar = {1}", this, __value);
    }

    var ClearColor(default,set):Null<Color>;

    private inline function set_ClearColor(value:Null<Color>):Null<Color> {
        var __value:Null<Color> = cast value;
        return untyped __cs__("{0}.ClearColor = {1}", this, __value);
    }

    var ProjectionMatrix(default,set):Null<Matrix>;

    private inline function set_ProjectionMatrix(value:Null<Matrix>):Null<Matrix> {
        var __value:Null<Matrix> = cast value;
        return untyped __cs__("{0}.ProjectionMatrix = {1}", this, __value);
    }

    var GradientFog(default,set):Null<sandbox.rendering.GradientFogSetup>;

    private inline function set_GradientFog(value:Null<sandbox.rendering.GradientFogSetup>):Null<sandbox.rendering.GradientFogSetup> {
        var __value:Null<sandbox.rendering.GradientFogSetup> = cast value;
        return untyped __cs__("{0}.GradientFog = {1}", this, __value);
    }

    var AmbientLightTint(default,set):Null<Color>;

    private inline function set_AmbientLightTint(value:Null<Color>):Null<Color> {
        var __value:Null<Color> = cast value;
        return untyped __cs__("{0}.AmbientLightTint = {1}", this, __value);
    }

    var AmbientLightAdd(default,set):Null<Color>;

    private inline function set_AmbientLightAdd(value:Null<Color>):Null<Color> {
        var __value:Null<Color> = cast value;
        return untyped __cs__("{0}.AmbientLightAdd = {1}", this, __value);
    }

    var ClipSpaceBounds(default,set):Null<Vector4>;

    private inline function set_ClipSpaceBounds(value:Null<Vector4>):Null<Vector4> {
        var __value:Null<Vector4> = cast value;
        return untyped __cs__("{0}.ClipSpaceBounds = {1}", this, __value);
    }

    var FlipX(default,set):Null<Bool>;

    private inline function set_FlipX(value:Null<Bool>):Null<Bool> {
        var __value:Null<Bool> = cast value;
        return untyped __cs__("{0}.FlipX = {1}", this, __value);
    }

    var FlipY(default,set):Null<Bool>;

    private inline function set_FlipY(value:Null<Bool>):Null<Bool> {
        var __value:Null<Bool> = cast value;
        return untyped __cs__("{0}.FlipY = {1}", this, __value);
    }

    var EnablePostprocessing(default,set):Null<Bool>;

    private inline function set_EnablePostprocessing(value:Null<Bool>):Null<Bool> {
        var __value:Null<Bool> = cast value;
        return untyped __cs__("{0}.EnablePostprocessing = {1}", this, __value);
    }

    var ViewHash(default,set):Int;

    private inline function set_ViewHash(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.ViewHash = {1}", this, __value);
    }

}
