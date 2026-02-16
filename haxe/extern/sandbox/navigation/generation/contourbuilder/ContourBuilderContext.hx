package sandbox.navigation.generation.contourbuilder;

@:native("Sandbox.Navigation.Generation.ContourBuilder.ContourBuilderContext")
final extern class ContourBuilderContext {
    function new():Void;
    var Verts(default,default):system.collections.generic.List<Int>;
    var VertsSimplified(default,default):system.collections.generic.List<Int>;
    var Flags(default,default):system.collections.generic.List<Int>;
    var ContourSet(default,default):sandbox.navigation.generation.ContourSet;
    var MergeBuffer(default,default):system.collections.generic.List<Int>;
    /** Return all contours in ContourSet to the pool and clear the set. Called at the start of BuildContours to recycle previous contours. */
    function ClearContourSet():Void;
    /** Rent a contour from the pool, sized for the given vertex count. */
    function RentContour(vertexCount:Int):sandbox.navigation.generation.Contour;
}
