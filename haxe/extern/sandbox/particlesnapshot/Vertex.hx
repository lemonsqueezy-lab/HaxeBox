package sandbox.particlesnapshot;

/** A vertex to update a particle snapshot with. */
@:native("Sandbox.ParticleSnapshot.Vertex")
final extern class Vertex {
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Normal(default,set):Vector3;

    private inline function set_Normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Normal = {1}", this, __value);
    }

    var Color(default,set):Color;

    private inline function set_Color(value:Color):Color {
        var __value:Color = cast value;
        return untyped __cs__("{0}.Color = {1}", this, __value);
    }

    var CreationTime(default,set):Single;

    private inline function set_CreationTime(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.CreationTime = {1}", this, __value);
    }

    var Radius(default,set):Single;

    private inline function set_Radius(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Radius = {1}", this, __value);
    }

    var ForceScale(default,set):Single;

    private inline function set_ForceScale(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.ForceScale = {1}", this, __value);
    }

}
