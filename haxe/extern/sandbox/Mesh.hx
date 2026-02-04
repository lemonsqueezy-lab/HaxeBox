package sandbox;

/** A mesh is a basic version of a , containing a set of vertices and indices which make up faces that make up a shape. A set of meshes can be used to create a via the class. */
@:native("Sandbox.Mesh")
extern class Mesh {
    overload function new():Void;
    overload function new(name:String, material:sandbox.Material, primType:sandbox.MeshPrimitiveType):Void;
    overload function new(material:sandbox.Material, primType:sandbox.MeshPrimitiveType):Void;
    var IsValid(default,never):Bool;
    /** Sets the primitive type for this mesh. */
    var PrimitiveType(never,default):sandbox.MeshPrimitiveType;
    /** Sets material for this mesh. */
    var Material(never,default):sandbox.Material;
    /** Sets AABB bounds for this mesh. */
    var Bounds(never,default):BBox;
    /** Used to calculate texture size for texture streaming. */
    var UvDensity(never,default):Single;
    /** Whether this mesh has an index buffer. */
    var HasIndexBuffer(default,never):Bool;
    /** Number of indices this mesh has. */
    var IndexCount(default,never):Int;
    /** Whether this mesh has a vertex buffer. */
    var HasVertexBuffer(default,never):Bool;
    /** Number of vertices this mesh has. */
    var VertexCount(default,never):Int;
    /** Create vertex and index buffers. */
    function CreateBuffers(vb:sandbox.VertexBuffer, calculateBounds:Bool):Void;
    /** Create an empty index buffer, it can be resized later */
    overload function CreateIndexBuffer():Void;
    overload function CreateIndexBuffer(indexCount:Int, data:system.Span<Int>):Void;
    overload function CreateIndexBuffer(indexCount:Int, data:system.collections.generic.List<Int>):Void;
    /** Create an empty vertex buffer, it can be resized later */
    overload function CreateVertexBuffer<T>(layout:Array<sandbox.VertexAttribute>):Void;
    overload function CreateVertexBuffer<T>(vertexCount:Int, data:system.Span<T>):Void;
    overload function CreateVertexBuffer<T>(vertexCount:Int, data:system.collections.generic.List<T>):Void;
    overload function CreateVertexBuffer<T>(vertexCount:Int, layout:Array<sandbox.VertexAttribute>, data:system.Span<T>):Void;
    overload function CreateVertexBuffer<T>(vertexCount:Int, layout:Array<sandbox.VertexAttribute>, data:system.collections.generic.List<T>):Void;
    @:protected function Finalize():Void;
    /** Lock all the memory in this buffer so you can write to it */
    overload function LockIndexBuffer(handler:sandbox.mesh.IndexBufferLockHandler):Void;
    overload function LockIndexBuffer(elementCount:Int, handler:sandbox.mesh.IndexBufferLockHandler):Void;
    overload function LockIndexBuffer(elementOffset:Int, elementCount:Int, handler:sandbox.mesh.IndexBufferLockHandler):Void;
    overload function LockVertexBuffer<T>(handler:sandbox.mesh.VertexBufferLockHandler<T>):Void;
    overload function LockVertexBuffer<T>(elementCount:Int, handler:sandbox.mesh.VertexBufferLockHandler<T>):Void;
    overload function LockVertexBuffer<T>(elementOffset:Int, elementCount:Int, handler:sandbox.mesh.VertexBufferLockHandler<T>):Void;
    /** Set data of this buffer */
    overload function SetIndexBufferData(data:system.Span<Int>, elementOffset:Int):Void;
    overload function SetIndexBufferData(data:system.collections.generic.List<Int>, elementOffset:Int):Void;
    /** Resize the index buffer. */
    function SetIndexBufferSize(elementCount:Int):Void;
    /** Set how many indices this mesh draws */
    function SetIndexRange(start:Int, count:Int):Void;
    overload function SetVertexBufferData<T>(data:system.Span<T>, elementOffset:Int):Void;
    overload function SetVertexBufferData<T>(data:system.collections.generic.List<T>, elementOffset:Int):Void;
    /** Resize the vertex buffer */
    function SetVertexBufferSize(elementCount:Int):Void;
    /** Set how many vertices this mesh draws (if there's no index buffer) */
    function SetVertexRange(start:Int, count:Int):Void;
    /** Triangulate a polygon made up of points, returns triangle indices into the list of vertices. */
    static function TriangulatePolygon(vertices:system.Span<Vector3>):system.Span<Int>;
}
