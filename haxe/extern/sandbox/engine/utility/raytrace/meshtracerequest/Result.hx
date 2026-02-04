package sandbox.engine.utility.raytrace.meshtracerequest;

@:native("Sandbox.Engine.Utility.RayTrace.MeshTraceRequest.Result")
final extern class Result {
    var Hit(default,set):Bool;

    private inline function set_Hit(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Hit = {1}", this, __value);
    }

    /** The distance between start and end positions. */
    var Distance(default,set):Single;

    private inline function set_Distance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Distance = {1}", this, __value);
    }

    /** The start position of the trace */
    var StartPosition(default,set):Vector3;

    private inline function set_StartPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.StartPosition = {1}", this, __value);
    }

    /** The end or hit position of the trace */
    var EndPosition(default,set):Vector3;

    private inline function set_EndPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.EndPosition = {1}", this, __value);
    }

    /** The hit position of the trace */
    var HitPosition(default,set):Vector3;

    private inline function set_HitPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.HitPosition = {1}", this, __value);
    }

    /** A fraction [0..1] of where the trace hit between the start and the original end positions */
    var Fraction(default,set):Single;

    private inline function set_Fraction(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Fraction = {1}", this, __value);
    }

    /** The hit surface normal (direction vector) */
    var Normal(default,set):Vector3;

    private inline function set_Normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Normal = {1}", this, __value);
    }

    var HitTriangle(default,set):Int;

    private inline function set_HitTriangle(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.HitTriangle = {1}", this, __value);
    }

    var Material(default,set):sandbox.Material;

    private inline function set_Material(value:sandbox.Material):sandbox.Material {
        var __value:sandbox.Material = cast value;
        return untyped __cs__("{0}.Material = {1}", this, __value);
    }

    /** The transform of the hit object (if it has one) */
    var Transform(default,set):Transform;

    private inline function set_Transform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    /** If we hit something associated with a sceneobject, this will be that object. */
    var SceneObject(default,set):sandbox.SceneObject;

    private inline function set_SceneObject(value:sandbox.SceneObject):sandbox.SceneObject {
        var __value:sandbox.SceneObject = cast value;
        return untyped __cs__("{0}.SceneObject = {1}", this, __value);
    }

    /** This is the Uv coordinate on the triangle hit. 'x' represents the distance between Vertex 0-1, 'y' represents the distance between Vertex 0-2. */
    var HitTriangleUv(default,set):Vector2;

    private inline function set_HitTriangleUv(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.HitTriangleUv = {1}", this, __value);
    }

    /** Given the position on the triangle hit, this vector gives the influence of each vertex on that position. So for example, if the Vector is [1,0,0] that means that the hit point is right on vertex 0. If it's [0.33, 0.33, 0.33] then it's right in the middle of each vertex. */
    var VertexInfluence(default,set):Vector3;

    private inline function set_VertexInfluence(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.VertexInfluence = {1}", this, __value);
    }

    var Vertex0(default,set):sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail;

    private inline function set_Vertex0(value:sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail):sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail {
        var __value:sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail = cast value;
        return untyped __cs__("{0}.Vertex0 = {1}", this, __value);
    }

    var Vertex1(default,set):sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail;

    private inline function set_Vertex1(value:sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail):sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail {
        var __value:sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail = cast value;
        return untyped __cs__("{0}.Vertex1 = {1}", this, __value);
    }

    var Vertex2(default,set):sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail;

    private inline function set_Vertex2(value:sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail):sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail {
        var __value:sandbox.engine.utility.raytrace.meshtracerequest.result.VertexDetail = cast value;
        return untyped __cs__("{0}.Vertex2 = {1}", this, __value);
    }

}
