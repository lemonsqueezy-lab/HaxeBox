package sandbox.rendering.spritebatchsceneobject;

@:native("Sandbox.Rendering.SpriteBatchSceneObject.SpriteData")
final extern class SpriteData {
    function new():Void;
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Rotation(default,set):Vector3;

    private inline function set_Rotation(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Rotation = {1}", this, __value);
    }

    var Scale(default,set):Vector2;

    private inline function set_Scale(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Scale = {1}", this, __value);
    }

    var TintColor(default,set):UInt;

    private inline function set_TintColor(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.TintColor = {1}", this, __value);
    }

    var OverlayColor(default,set):UInt;

    private inline function set_OverlayColor(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.OverlayColor = {1}", this, __value);
    }

    var TextureHandle(default,set):Int;

    private inline function set_TextureHandle(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.TextureHandle = {1}", this, __value);
    }

    var RenderFlags(default,set):Int;

    private inline function set_RenderFlags(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.RenderFlags = {1}", this, __value);
    }

    var BillboardMode(default,set):UInt;

    private inline function set_BillboardMode(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.BillboardMode = {1}", this, __value);
    }

    var FogStrengthCutout(default,set):UInt;

    private inline function set_FogStrengthCutout(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.FogStrengthCutout = {1}", this, __value);
    }

    var Lighting(default,set):UInt;

    private inline function set_Lighting(value:UInt):UInt {
        var __value:UInt = cast value;
        return untyped __cs__("{0}.Lighting = {1}", this, __value);
    }

    var DepthFeather(default,set):Single;

    private inline function set_DepthFeather(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.DepthFeather = {1}", this, __value);
    }

    var SamplerIndex(default,set):Int;

    private inline function set_SamplerIndex(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.SamplerIndex = {1}", this, __value);
    }

    var Splots(default,set):Int;

    private inline function set_Splots(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Splots = {1}", this, __value);
    }

    var Sequence(default,set):Int;

    private inline function set_Sequence(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Sequence = {1}", this, __value);
    }

    var SequenceTime(default,set):Single;

    private inline function set_SequenceTime(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.SequenceTime = {1}", this, __value);
    }

    var RotationOffset(default,set):Single;

    private inline function set_RotationOffset(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.RotationOffset = {1}", this, __value);
    }

    var MotionBlur(default,set):Vector4;

    private inline function set_MotionBlur(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.MotionBlur = {1}", this, __value);
    }

    var Velocity(default,set):Vector3;

    private inline function set_Velocity(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Velocity = {1}", this, __value);
    }

    var BlendSheetUV(default,set):Vector4;

    private inline function set_BlendSheetUV(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.BlendSheetUV = {1}", this, __value);
    }

    var Offset(default,set):Vector2;

    private inline function set_Offset(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Offset = {1}", this, __value);
    }

}
