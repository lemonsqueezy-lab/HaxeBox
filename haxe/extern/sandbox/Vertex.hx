package sandbox;

@:native("Sandbox.Vertex")
final extern class Vertex {
    overload function new(position:Vector3):Void;
    overload function new(position:Vector3, color:Color32):Void;
    overload function new(position:Vector3, normal:Vector3, tangent:Vector3, texCoord0:Vector4):Void;
    overload function new(position:Vector3, texCoord0:Vector4, color:Color32):Void;
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Color(default,set):Color32;

    private inline function set_Color(value:Color32):Color32 {
        var __value:Color32 = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    var Normal(default,set):Vector3;

    private inline function set_Normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Normal = {1}", this, __value);
    }

    var TexCoord0(default,set):Vector4;

    private inline function set_TexCoord0(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.TexCoord0 = {1}", this, __value);
    }

    var TexCoord1(default,set):Vector4;

    private inline function set_TexCoord1(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.TexCoord1 = {1}", this, __value);
    }

    var Tangent(default,set):Vector4;

    private inline function set_Tangent(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.Tangent = {1}", this, __value);
    }

    static var Layout(default,never):Array<sandbox.VertexAttribute>;
}
