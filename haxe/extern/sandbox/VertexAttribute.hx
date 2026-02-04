package sandbox;

@:native("Sandbox.VertexAttribute")
final extern class VertexAttribute {
    function new(type:sandbox.VertexAttributeType, format:sandbox.VertexAttributeFormat, components:Int, semanticIndex:Int):Void;
    var Type(default,set):sandbox.VertexAttributeType;

    private inline function set_Type(value:sandbox.VertexAttributeType):sandbox.VertexAttributeType {
        var __value:sandbox.VertexAttributeType = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Format(default,set):sandbox.VertexAttributeFormat;

    private inline function set_Format(value:sandbox.VertexAttributeFormat):sandbox.VertexAttributeFormat {
        var __value:sandbox.VertexAttributeFormat = cast value;
        return untyped __cs__("{0}.Format = {1}", this, __value);
    }

    var Components(default,set):Int;

    private inline function set_Components(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Components = {1}", this, __value);
    }

    var SemanticIndex(default,set):Int;

    private inline function set_SemanticIndex(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.SemanticIndex = {1}", this, __value);
    }

}
