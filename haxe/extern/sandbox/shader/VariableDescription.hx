package sandbox.shader;

@:native("Sandbox.Shader.VariableDescription")
final extern class VariableDescription {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Type(default,set):String;

    private inline function set_Type(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var AttributeName(default,set):String;

    private inline function set_AttributeName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.AttributeName = {1}", this, __value);
    }

    var SourceType(default,set):String;

    private inline function set_SourceType(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.SourceType = {1}", this, __value);
    }

    var UiType(default,set):String;

    private inline function set_UiType(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.UiType = {1}", this, __value);
    }

    var UiGroup(default,set):String;

    private inline function set_UiGroup(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.UiGroup = {1}", this, __value);
    }

    var UiStep(default,set):Single;

    private inline function set_UiStep(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.UiStep = {1}", this, __value);
    }

    var FloatMin(default,set):Vector4;

    private inline function set_FloatMin(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.FloatMin = {1}", this, __value);
    }

    var FloatMax(default,set):Vector4;

    private inline function set_FloatMax(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.FloatMax = {1}", this, __value);
    }

    var DefaultInputTexture(default,set):String;

    private inline function set_DefaultInputTexture(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DefaultInputTexture = {1}", this, __value);
    }

    var FloatDefault(default,set):Vector4;

    private inline function set_FloatDefault(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.FloatDefault = {1}", this, __value);
    }

    var IntDefault(default,set):Vector4;

    private inline function set_IntDefault(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.IntDefault = {1}", this, __value);
    }

}
