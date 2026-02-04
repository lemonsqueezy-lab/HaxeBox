package sandbox;

/** An editable mesh made up of polygons, triangulated into a model */
@:native("Sandbox.PolygonMesh")
final extern class PolygonMesh {
    function new():Void;
    /** Has there been changes to the mesh that need rebuilding? */
    var IsDirty(default,never):Bool;
    /** Where is the mesh in worldspace. */
    var Transform(default,default):Transform;
    /** All of the vertex handles being used */
    var VertexHandles(default,never):system.collections.generic.IEnumerable<halfedgemesh.VertexHandle>;
    /** All of the face handles being used */
    var FaceHandles(default,never):system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>;
    /** All of the half edge handles being used */
    var HalfEdgeHandles(default,never):system.collections.generic.IEnumerable<halfedgemesh.HalfEdgeHandle>;
    /** Connect these vertices to make a face */
    function AddFace(hVertices:Array<halfedgemesh.VertexHandle>):halfedgemesh.FaceHandle;
    /** Add a vertex to the topology */
    function AddVertex(position:Vector3):halfedgemesh.VertexHandle;
    function AddVertexToEdge(hVertexA:halfedgemesh.VertexHandle, hVertexB:halfedgemesh.VertexHandle, flParam:Single, pOutNewVertex:halfedgemesh.VertexHandle):Bool;
    function AddVertexToEdgeAndUpdateTable(hVertexA:halfedgemesh.VertexHandle, hVertexB:halfedgemesh.VertexHandle, flParam:Single, pNewVertex:halfedgemesh.VertexHandle, pEdgeTable:system.collections.generic.SortedSet<halfedgemesh.HalfEdgeHandle>):Bool;
    /** Add multiple vertices to the topology */
    function AddVertices(positions:Array<Vector3>):Array<halfedgemesh.VertexHandle>;
    /** Transform all the vertices */
    function ApplyTransform(transform:Transform):Void;
    function AreEdgesCoLinear(hEdgeA:halfedgemesh.HalfEdgeHandle, hEdgeB:halfedgemesh.HalfEdgeHandle, flAngleToleranceInDegrees:Single):Bool;
    function AverageEdgeUVs(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>):Void;
    function AverageVertexUVs(vertices:system.collections.generic.IReadOnlyList<halfedgemesh.VertexHandle>):Void;
    function BevelEdges(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, edgeRemoveMode:sandbox.polygonmesh.BevelEdgesMode, numSegments:Int, distance:Single, shape:Single, outNewOuterEdges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>, outNewInnerEdges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>, outNewFaces:system.collections.generic.List<halfedgemesh.FaceHandle>, outFacesNeedingUVs:system.collections.generic.List<halfedgemesh.FaceHandle>):Bool;
    function BevelVertices(vertices:system.collections.generic.IReadOnlyList<halfedgemesh.VertexHandle>, distance:Single, newVertices:system.collections.generic.List<halfedgemesh.VertexHandle>):Bool;
    function BridgeEdges(hEdgeA:halfedgemesh.HalfEdgeHandle, hEdgeB:halfedgemesh.HalfEdgeHandle, hOutNewFace:halfedgemesh.FaceHandle):Bool;
    /** Calculate bounds of all vertices */
    overload function CalculateBounds():BBox;
    overload function CalculateBounds(transform:Transform):BBox;
    function ClipFacesByPlaneAndCap(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>, planeInMeshSpace:sandbox.Plane, removeFacesBehindPlane:Bool, attemptToCap:Bool, outNewEdges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>, outCapFaces:system.collections.generic.List<halfedgemesh.FaceHandle>):Void;
    overload function CollapseEdge(hEdge:halfedgemesh.HalfEdgeHandle, pOutNewVertex:halfedgemesh.VertexHandle, pOutReplacedEdges:system.collections.generic.List<system.ValueTuple2<halfedgemesh.HalfEdgeHandle,halfedgemesh.HalfEdgeHandle>>):Bool;
    overload function CollapseEdge(hHalfEdgeA:halfedgemesh.HalfEdgeHandle, flParam:Single, pOutNewVertex:halfedgemesh.VertexHandle, pOutReplacedEdges:system.collections.generic.List<system.ValueTuple2<halfedgemesh.HalfEdgeHandle,halfedgemesh.HalfEdgeHandle>>):Bool;
    function CollapseEdges(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>):Void;
    function CollapseFace(hFace:halfedgemesh.FaceHandle, hOutVertex:halfedgemesh.VertexHandle):Bool;
    function CombineFaces(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>):Void;
    function ComputeClosestPointOnEdge(hVertexA:halfedgemesh.VertexHandle, hVertexB:halfedgemesh.VertexHandle, vTargetPoint:Vector3, pOutBaseEdgeParam:Single):Bool;
    function ComputeFaceNormal(hFace:halfedgemesh.FaceHandle, pOutNormal:Vector3):Void;
    overload function ComputeFaceTextureCoordinatesFromParameters():Void;
    overload function ComputeFaceTextureCoordinatesFromParameters(transform:Transform):Void;
    overload function ComputeFaceTextureCoordinatesFromParameters(faces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>):Void;
    overload function ComputeFaceTextureCoordinatesFromParameters(faces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>, transform:Transform, textureSizes:system.collections.generic.IReadOnlyList<Vector2>, defaultScale:Single):Void;
    overload function ComputeFaceTextureParametersFromCoordinates():Void;
    overload function ComputeFaceTextureParametersFromCoordinates(faces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>):Void;
    overload function ComputeFaceTextureParametersFromCoordinates(faces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>, textureSizes:system.collections.generic.IReadOnlyList<Vector2>, transform:Transform):Void;
    function ConnectEdges(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, newEdges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>):Bool;
    function ConnectVertices(hVertexA:halfedgemesh.VertexHandle, hVertexB:halfedgemesh.VertexHandle, hNewEdge:halfedgemesh.HalfEdgeHandle):Bool;
    function CreateEdgesConnectingVertexToPoint(hStartVertex:halfedgemesh.VertexHandle, vTargetPosition:Vector3, pOutEdgeList:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>, pOutIsLastEdgeConnector:Bool, pEdgeTable:system.collections.generic.SortedSet<halfedgemesh.HalfEdgeHandle>):halfedgemesh.VertexHandle;
    function CreateFace(hFace:halfedgemesh.FaceHandle, transform:Transform, color:Color):Array<sandbox.Vertex>;
    function CreateFaceInEdgeLoop(hOpenEdge:halfedgemesh.HalfEdgeHandle, hNewFace:halfedgemesh.FaceHandle):Bool;
    function DetachFaces(faces:Array<halfedgemesh.FaceHandle>, newFaces:system.collections.generic.List<halfedgemesh.FaceHandle>):Void;
    function DissolveEdge(edge:halfedgemesh.HalfEdgeHandle):Void;
    function DissolveEdges(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, bFaceMustBePlanar:Bool, removeCondition:sandbox.polygonmesh.DissolveRemoveVertexCondition):Void;
    function ExtendEdges(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, amount:Single, newEdges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>, newFaces:system.collections.generic.List<halfedgemesh.FaceHandle>):Bool;
    function ExtrudeFaces(faces:Array<halfedgemesh.FaceHandle>, newFaces:system.collections.generic.List<halfedgemesh.FaceHandle>, connectingFaces:system.collections.generic.List<halfedgemesh.FaceHandle>, offset:Vector3):Void;
    function FaceHandleFromIndex(index:Int):halfedgemesh.FaceHandle;
    function FindBoundaryEdgesConnectedToFaces(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>, outBoundaryEdges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>):Void;
    function FindEdgeIslands(edgeList:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, outEdgeList:system.collections.generic.List<system.collections.generic.List<halfedgemesh.HalfEdgeHandle>>):Void;
    function FindEdgeLoopForEdges(originalEdges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, pOutEdgeLoopEdges:Array<halfedgemesh.HalfEdgeHandle>):Void;
    function FindEdgeRibs(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, outLeftRibs:system.collections.generic.List<system.collections.generic.List<halfedgemesh.HalfEdgeHandle>>, outRightRibs:system.collections.generic.List<system.collections.generic.List<halfedgemesh.HalfEdgeHandle>>):Int;
    function FindEdgeRing(hEdge:halfedgemesh.HalfEdgeHandle, outEdgeList:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>):Void;
    function FindFaceIslands(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>, outFaces:system.collections.generic.List<system.collections.generic.List<halfedgemesh.FaceHandle>>):Void;
    function FindFaceVertexConnectedToVertex(hVertex:halfedgemesh.VertexHandle, hFace:halfedgemesh.FaceHandle):halfedgemesh.HalfEdgeHandle;
    function FlipAllFaces():Void;
    function GenerateUVsForFaces(faces:system.ReadOnlySpan<halfedgemesh.FaceHandle>, generationMode:Int, edgeAlignMode:Int, alignEdgeVertexA:halfedgemesh.HalfEdgeHandle, alignEdgeVertexB:halfedgemesh.HalfEdgeHandle, outFaceVertices:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>, outFaceVertexUVs:system.collections.generic.List<Vector2>):Void;
    static function GetBestPlanesForEdgeBetweenFaces(pMesh1:sandbox.PolygonMesh, hFace1:halfedgemesh.FaceHandle, mLocalToWorld1:Transform, pMesh2:sandbox.PolygonMesh, hFace2:halfedgemesh.FaceHandle, mLocalToWorld2:Transform, pOutPlane1:sandbox.Plane, pOutPlane2:sandbox.Plane):Void;
    /** Get start and end points of an edge */
    function GetEdgeLine(hEdge:halfedgemesh.HalfEdgeHandle):Line;
    /** Get the smoothing of this edge */
    function GetEdgeSmoothing(hEdge:halfedgemesh.HalfEdgeHandle):sandbox.polygonmesh.EdgeSmoothMode;
    function GetEdgeVertexPositions(hEdge:halfedgemesh.HalfEdgeHandle, transform:Transform, outVertexA:Vector3, outVertexB:Vector3):Void;
    function GetEdgeVertices(hEdge:halfedgemesh.HalfEdgeHandle, hVertexA:halfedgemesh.VertexHandle, hVertexB:halfedgemesh.VertexHandle):Void;
    /** Get the start and end points of all edges */
    function GetEdges():system.collections.generic.IEnumerable<Line>;
    function GetEdgesConnectedToFace(hFace:halfedgemesh.FaceHandle, edges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>):Bool;
    function GetEdgesConnectedToVertex(hVertex:halfedgemesh.VertexHandle, edges:system.collections.generic.List<halfedgemesh.HalfEdgeHandle>):Bool;
    /** Calculate the center point of a face */
    function GetFaceCenter(hFace:halfedgemesh.FaceHandle):Vector3;
    /** Get all edge handles of a face */
    function GetFaceEdges(hFace:halfedgemesh.FaceHandle):Array<halfedgemesh.HalfEdgeHandle>;
    /** Get a material a face is using */
    function GetFaceMaterial(hFace:halfedgemesh.FaceHandle):sandbox.Material;
    function GetFacePlaneUsingEdge(hFace:halfedgemesh.FaceHandle, hEdge:halfedgemesh.HalfEdgeHandle, transform:Transform, outPlane:sandbox.Plane):Void;
    function GetFaceTextureCoords(hFace:halfedgemesh.FaceHandle):Array<Vector2>;
    function GetFaceTextureParameters(hFace:halfedgemesh.FaceHandle, outAxisU:Vector4, outAxisV:Vector4, outScale:Vector2):Void;
    function GetFaceVertexPositions(hFace:halfedgemesh.FaceHandle, transform:Transform):system.collections.generic.IEnumerable<Vector3>;
    /** Get all vertex handles of a face */
    function GetFaceVertices(hFace:halfedgemesh.FaceHandle):Array<halfedgemesh.VertexHandle>;
    function GetFaceVerticesConnectedToFace(hFace:halfedgemesh.FaceHandle, hEdges:Array<halfedgemesh.HalfEdgeHandle>):Bool;
    function GetFacesConnectedToEdge(hEdge:halfedgemesh.HalfEdgeHandle, hOutFaceA:halfedgemesh.FaceHandle, hOutFaceB:halfedgemesh.FaceHandle):Void;
    function GetFacesConnectedToFace(hFace:halfedgemesh.FaceHandle, faces:system.collections.generic.List<halfedgemesh.FaceHandle>):Bool;
    function GetFacesConnectedToVertex(hVertex:halfedgemesh.VertexHandle, faces:system.collections.generic.List<halfedgemesh.FaceHandle>):Bool;
    /** Get the face connected to this half edge */
    function GetHalfEdgeFace(hEdge:halfedgemesh.HalfEdgeHandle):halfedgemesh.FaceHandle;
    static function GetNearestEdgesBetweenFaces(pMesh1:sandbox.PolygonMesh, hFace1:halfedgemesh.FaceHandle, mLocalToWorld1:Transform, pMesh2:sandbox.PolygonMesh, hFace2:halfedgemesh.FaceHandle, mLocalToWorld2:Transform, pOutEdge1:halfedgemesh.HalfEdgeHandle, pOutEdge2:halfedgemesh.HalfEdgeHandle):Bool;
    function GetNextVertexInFace(hFaceVertex:halfedgemesh.HalfEdgeHandle):halfedgemesh.HalfEdgeHandle;
    function GetOppositeFaceConnectedToEdge(hEdge:halfedgemesh.HalfEdgeHandle, hFace:halfedgemesh.FaceHandle):halfedgemesh.FaceHandle;
    function GetOppositeHalfEdge(hEdge:halfedgemesh.HalfEdgeHandle):halfedgemesh.HalfEdgeHandle;
    /** Get face vertex texture coord */
    function GetTextureCoord(faceVertex:halfedgemesh.HalfEdgeHandle):Vector2;
    static function GetTextureExtents(vAxisU:Vector4, vAxisV:Vector4, vScale:Vector2, extents:sandbox.polygonmesh.FaceExtents, topLeft:Vector2, bottomRight:Vector2):Void;
    /** Get texture offset of a face */
    function GetTextureOffset(hFace:halfedgemesh.FaceHandle):Vector2;
    /** Get texture scale of a face */
    function GetTextureScale(hFace:halfedgemesh.FaceHandle):Vector2;
    function GetVertexConnectedToFaceVertex(hFaceVertex:halfedgemesh.HalfEdgeHandle):halfedgemesh.VertexHandle;
    /** Get the position of a vertex */
    overload function GetVertexPosition(hVertex:halfedgemesh.VertexHandle):Vector3;
    overload function GetVertexPosition(hVertex:halfedgemesh.VertexHandle, transform:Transform, outPosition:Vector3):Void;
    /** Get the positions of all vertices */
    function GetVertexPositions():system.collections.generic.IEnumerable<Vector3>;
    overload function GetVerticesConnectedToEdge(hEdge:halfedgemesh.HalfEdgeHandle, hOutVertexA:halfedgemesh.VertexHandle, hOutVertexB:halfedgemesh.VertexHandle):Void;
    overload function GetVerticesConnectedToEdge(hEdge:halfedgemesh.HalfEdgeHandle, hFace:halfedgemesh.FaceHandle, hOutVertexA:halfedgemesh.VertexHandle, hOutVertexB:halfedgemesh.VertexHandle):Bool;
    function GetVerticesConnectedToFace(hFace:halfedgemesh.FaceHandle, vertices:Array<halfedgemesh.VertexHandle>):Bool;
    function HalfEdgeHandleFromIndex(index:Int):halfedgemesh.HalfEdgeHandle;
    /** Determine if the specified edge is open (only has one connected face) */
    function IsEdgeOpen(hEdge:halfedgemesh.HalfEdgeHandle):Bool;
    function IsEdgeSmooth(hEdge:halfedgemesh.HalfEdgeHandle):Bool;
    static function JsonRead(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type):cs.system.Object;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
    function JustifyFaceTextureParameters(hFaces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>, justification:sandbox.polygonmesh.TextureJustification, extents:sandbox.polygonmesh.FaceExtents):Void;
    function MergeEdges(hEdgeA:halfedgemesh.HalfEdgeHandle, hEdgeB:halfedgemesh.HalfEdgeHandle, hOutNewEdge:halfedgemesh.HalfEdgeHandle):Bool;
    function MergeMesh(sourceMesh:sandbox.PolygonMesh, transform:Transform, newVertices:system.collections.generic.Dictionary<halfedgemesh.VertexHandle,halfedgemesh.VertexHandle>, newHalfEdges:system.collections.generic.Dictionary<halfedgemesh.HalfEdgeHandle,halfedgemesh.HalfEdgeHandle>, newFaces:system.collections.generic.Dictionary<halfedgemesh.FaceHandle,halfedgemesh.FaceHandle>):Void;
    function MergeVerticesWithinDistance(originalVertices:system.collections.generic.IReadOnlyList<halfedgemesh.VertexHandle>, flMaxDistance:Single, bPreConnect:Bool, bAveragePositions:Bool, pOutFinalVertices:system.collections.generic.List<halfedgemesh.VertexHandle>):Int;
    function QuadSliceFaces(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>, cutsX:Int, cutsY:Int, minCornerAngleDegrees:Single, outNewFaceList:system.collections.generic.List<halfedgemesh.FaceHandle>):Void;
    /** Triangulate the polygons into a model */
    function Rebuild():sandbox.Model;
    function RemoveBadFaces():Void;
    function RemoveColinearVertexAndUpdateTable(hVertex:halfedgemesh.VertexHandle, edgeTable:system.collections.generic.SortedSet<halfedgemesh.HalfEdgeHandle>, flColinearAngleTolerance:Single):Bool;
    /** Remove these edges */
    function RemoveEdges(hEdges:system.collections.generic.IEnumerable<halfedgemesh.HalfEdgeHandle>):Void;
    /** Remove these faces */
    function RemoveFaces(hFaces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>):Void;
    function RemoveVertex(hVertex:halfedgemesh.VertexHandle, removeFreeVerts:Bool):Bool;
    /** Remove these vertices */
    function RemoveVertices(hVertices:system.collections.generic.IEnumerable<halfedgemesh.VertexHandle>):Void;
    /** Scale all vertices */
    function Scale(scale:Vector3):Void;
    /** Set the smoothing of this edge */
    function SetEdgeSmoothing(hEdge:halfedgemesh.HalfEdgeHandle, mode:sandbox.polygonmesh.EdgeSmoothMode):Void;
    /** Assign a material to a face */
    overload function SetFaceMaterial(hFace:halfedgemesh.FaceHandle, material:String):Void;
    overload function SetFaceMaterial(hFace:halfedgemesh.FaceHandle, material:sandbox.Material):Void;
    /** Set face texture coords */
    function SetFaceTextureCoords(hFace:halfedgemesh.FaceHandle, texcoords:system.collections.generic.IReadOnlyList<Vector2>):Void;
    /** Set face texture properties */
    overload function SetFaceTextureParameters(hFace:halfedgemesh.FaceHandle, offset:Vector2, uAxis:Vector3, vAxis:Vector3):Void;
    overload function SetFaceTextureParameters(hFace:halfedgemesh.FaceHandle, axisU:Vector4, axisV:Vector4, scale:Vector2):Void;
    function SetSmoothingAngle(smoothingAngle:Single):Void;
    /** Set face vertex texture coord */
    function SetTextureCoord(faceVertex:halfedgemesh.HalfEdgeHandle, texcoord:Vector2):Void;
    /** Set texture offset of a face */
    function SetTextureOffset(hFace:halfedgemesh.FaceHandle, offset:Vector2):Void;
    /** Set texture scale of a face */
    function SetTextureScale(hFace:halfedgemesh.FaceHandle, scale:Vector2):Void;
    /** Set transform without computing texture parameters from coordinates. */
    function SetTransform(transform:Transform):Void;
    /** Set the position of a vertex */
    function SetVertexPosition(hVertex:halfedgemesh.VertexHandle, position:Vector3):Void;
    function SplitEdges(edges:system.collections.generic.IReadOnlyList<halfedgemesh.HalfEdgeHandle>, newEdgesA:Array<halfedgemesh.HalfEdgeHandle>, pOutNewEdgesB:Array<halfedgemesh.HalfEdgeHandle>):Bool;
    function SplitFacesIntoIslandsForUVMapping(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>, faceIslands:system.collections.generic.List<system.collections.generic.List<halfedgemesh.FaceHandle>>):Void;
    /** Align face texture properties to face */
    function TextureAlignToFace(transform:Transform, hFace:halfedgemesh.FaceHandle):Void;
    /** Align all face texture properties to grid */
    overload function TextureAlignToGrid(transform:Transform):Void;
    overload function TextureAlignToGrid(transform:Transform, hFace:halfedgemesh.FaceHandle):Void;
    function ThickenFaces(faces:system.collections.generic.IReadOnlyList<halfedgemesh.FaceHandle>, amount:Single, outFaces:system.collections.generic.List<halfedgemesh.FaceHandle>):Bool;
    /** Convert a triangle index to a face handle */
    function TriangleToFace(triangle:Int):halfedgemesh.FaceHandle;
    function UnionExtentsForFaces(hFaces:system.collections.generic.IEnumerable<halfedgemesh.FaceHandle>, transform:Transform, extents:sandbox.polygonmesh.FaceExtents):Void;
    function VertexHandleFromIndex(index:Int):halfedgemesh.VertexHandle;
}
