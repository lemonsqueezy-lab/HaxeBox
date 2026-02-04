package sandbox.engine.utility.raytrace.meshtracerequest.result;

@:native("Sandbox.Engine.Utility.RayTrace.MeshTraceRequest.Result.VertexDetail")
final extern class VertexDetail {
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Normal(default,set):Vector3;

    private inline function set_Normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Normal = {1}", this, __value);
    }

    var Color(default,set):Vector4;

    private inline function set_Color(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    var Uv0(default,set):Vector2;

    private inline function set_Uv0(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Uv0 = {1}", this, __value);
    }

    var Uv1(default,set):Vector2;

    private inline function set_Uv1(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Uv1 = {1}", this, __value);
    }

    var Paint1(default,set):Vector4;

    private inline function set_Paint1(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.Paint1 = {1}", this, __value);
    }

    var Paint0(default,set):Vector4;

    private inline function set_Paint0(value:Vector4):Vector4 {
        var __value:Vector4 = cast value;
        return untyped __cs__("{0}.Paint0 = {1}", this, __value);
    }

}
