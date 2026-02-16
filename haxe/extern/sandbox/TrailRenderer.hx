package sandbox;

/** Renders a trail behind the object, when it moves. */
@:native("Sandbox.TrailRenderer")
final extern class TrailRenderer extends sandbox.Renderer {
    function new():Void;
    var MaxPoints(default,default):Int;
    var PointDistance(default,default):Single;
    var LifeTime(default,default):Single;
    /** When enabled, new points are added to the trail. */
    var Emitting(default,default):Bool;
    var Texturing(default,default):sandbox.TrailTextureConfig;
    var Color(default,default):sandbox.Gradient;
    var Width(default,default):sandbox.Curve;
    var Face(default,default):sandbox.scenelineobject.FaceMode;
    var Wireframe(default,default):Bool;
    var Opaque(default,default):Bool;
    var CastShadows(default,default):Bool;
    var BlendMode(default,default):sandbox.BlendMode;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
}
