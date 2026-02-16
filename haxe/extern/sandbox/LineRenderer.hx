package sandbox;

/** Renders a line between a list of points */
@:native("Sandbox.LineRenderer")
final extern class LineRenderer extends sandbox.Renderer {
    function new():Void;
    var UseVectorPoints(default,default):Bool;
    var Points(default,default):system.collections.generic.List<sandbox.GameObject>;
    var VectorPoints(default,default):system.collections.generic.List<Vector3>;
    var Face(default,default):sandbox.scenelineobject.FaceMode;
    var Color(default,default):sandbox.Gradient;
    var Width(default,default):sandbox.Curve;
    var Texturing(default,default):sandbox.TrailTextureConfig;
    var SplineInterpolation(default,default):Int;
    var SplineTension(default,default):Single;
    var SplineContinuity(default,default):Single;
    var SplineBias(default,default):Single;
    var AutoCalculateNormals(default,default):Bool;
    var StartCap(default,default):sandbox.scenelineobject.CapStyle;
    var EndCap(default,default):sandbox.scenelineobject.CapStyle;
    var Wireframe(default,default):Bool;
    var Opaque(default,default):Bool;
    var Additive(default,default):Bool;
    var CastShadows(default,default):Bool;
    var DepthFeather(default,default):Single;
    var FogStrength(default,default):Single;
    var Lighting(default,default):Bool;
    var CylinderSegments(default,default):Int;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnPreRender():Void;
    @:protected function OnTagsChanged():Void;
}
