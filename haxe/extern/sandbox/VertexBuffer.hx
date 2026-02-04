package sandbox;

@:native("Sandbox.VertexBuffer")
extern class VertexBuffer {
    function new():Void;
    /** Whether this vertex buffer has any indexes. This is set by . */
    var Indexed(default,never):Bool;
    var Default(default,default):sandbox.Vertex;
    /** Add a vertex */
    function Add(v:sandbox.Vertex):Void;
    /** Add an index. This is relative to the top of the vertex buffer. So 0 is Vertex.Count., 1 is Vertex.Count -1 */
    function AddIndex(i:Int):Void;
    /** Add an index. This is NOT relative to the top of the vertex buffer. */
    function AddRawIndex(i:Int):Void;
    /** Add a triangle by indices. This is relative to the top of the vertex buffer. So 0 is Vertex.Count. */
    function AddTriangleIndex(a:Int, b:Int, c:Int):Void;
    /** Clear all vertices and indices, and resets . */
    function Clear():Void;
    /** Draw this mesh using Material */
    function Draw(material:sandbox.Material, attributes:sandbox.RenderAttributes):Void;
    /** Clear the buffer and set whether it will have indices. */
    function Init(useIndexBuffer:Bool):Void;
}
