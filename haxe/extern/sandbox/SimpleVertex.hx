package sandbox;

@:native("Sandbox.SimpleVertex")
final extern class SimpleVertex {
    function new(position:Vector3, normal:Vector3, tangent:Vector3, texcoord:Vector2):Void;
    var position(default,set):Vector3;

    private inline function set_position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.position = {1}", this, __value);
    }

    var normal(default,set):Vector3;

    private inline function set_normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.normal = {1}", this, __value);
    }

    var tangent(default,set):Vector3;

    private inline function set_tangent(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.tangent = {1}", this, __value);
    }

    var texcoord(default,set):Vector2;

    private inline function set_texcoord(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.texcoord = {1}", this, __value);
    }

    static var Layout(default,never):Array<sandbox.VertexAttribute>;
}
