package sandbox.polygonmesh;

@:native("Sandbox.PolygonMesh.FaceExtents")
extern class FaceExtents {
    function new():Void;
    function AddExtents(other:sandbox.polygonmesh.FaceExtents):Void;
    function AddPoint(position:Vector3):Void;
    function Get(type:sandbox.polygonmesh.ExtentType):Vector3;
}
