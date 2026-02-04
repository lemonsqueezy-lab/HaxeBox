package sandbox;

@:native("Sandbox.SandboxBaseExtensions")
final extern class SandboxBaseExtensions {
    static overload function Add(self:sandbox.VertexBuffer, pos:Vector3):Void;
    static overload function Add(self:sandbox.VertexBuffer, pos:Vector3, uv:Vector2):Void;
    static function AddCube(self:sandbox.VertexBuffer, center:Vector3, size:Vector3, rot:Rotation, color:Color32):Void;
    static overload function AddQuad(self:sandbox.VertexBuffer, rect:sandbox.Rect):Void;
    static overload function AddQuad(self:sandbox.VertexBuffer, origin:Ray, width:Vector3, height:Vector3):Void;
    static overload function AddQuad(self:sandbox.VertexBuffer, a:Vector3, b:Vector3, c:Vector3, d:Vector3):Void;
    static overload function AddQuad(self:sandbox.VertexBuffer, a:sandbox.Vertex, b:sandbox.Vertex, c:sandbox.Vertex, d:sandbox.Vertex):Void;
    static function AddTriangle(self:sandbox.VertexBuffer, a:sandbox.Vertex, b:sandbox.Vertex, c:sandbox.Vertex):Void;
}
