package sandbox;

@:native("Sandbox.SceneDynamicObject")
extern class SceneDynamicObject extends sandbox.SceneObject {
    function new(sceneWorld:sandbox.SceneWorld):Void;
    var Material(never,default):sandbox.Material;
    overload function AddVertex(v:sandbox.Vertex):Void;
    overload function AddVertex(v:system.Span<sandbox.Vertex>):Void;
    function Clear():Void;
    function Init(type:sandbox.graphics.PrimitiveType):Void;
    function Write(type:sandbox.graphics.PrimitiveType, vertices:Int, indices:Int):system.IDisposable;
}
