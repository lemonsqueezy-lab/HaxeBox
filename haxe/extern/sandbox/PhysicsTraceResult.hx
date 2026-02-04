package sandbox;

@:native("Sandbox.PhysicsTraceResult")
final extern class PhysicsTraceResult {
    /** The id of the hit bone (either from hitbox or physics shape) */
    var Bone(default,never):Int;
    /** The distance between start and end positions. */
    var Distance(default,never):Single;
    var Hit(default,set):Bool;

    private inline function set_Hit(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Hit = {1}", this, __value);
    }

    var StartedSolid(default,set):Bool;

    private inline function set_StartedSolid(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.StartedSolid = {1}", this, __value);
    }

    var StartPosition(default,set):Vector3;

    private inline function set_StartPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.StartPosition = {1}", this, __value);
    }

    var EndPosition(default,set):Vector3;

    private inline function set_EndPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.EndPosition = {1}", this, __value);
    }

    var HitPosition(default,set):Vector3;

    private inline function set_HitPosition(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.HitPosition = {1}", this, __value);
    }

    var Normal(default,set):Vector3;

    private inline function set_Normal(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Normal = {1}", this, __value);
    }

    var Fraction(default,set):Single;

    private inline function set_Fraction(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Fraction = {1}", this, __value);
    }

    var Body(default,set):sandbox.PhysicsBody;

    private inline function set_Body(value:sandbox.PhysicsBody):sandbox.PhysicsBody {
        var __value:sandbox.PhysicsBody = cast value;
        return untyped __cs__("{0}.Body = {1}", this, __value);
    }

    var Shape(default,set):sandbox.PhysicsShape;

    private inline function set_Shape(value:sandbox.PhysicsShape):sandbox.PhysicsShape {
        var __value:sandbox.PhysicsShape = cast value;
        return untyped __cs__("{0}.Shape = {1}", this, __value);
    }

    var Surface(default,set):sandbox.Surface;

    private inline function set_Surface(value:sandbox.Surface):sandbox.Surface {
        var __value:sandbox.Surface = cast value;
        return untyped __cs__("{0}.Surface = {1}", this, __value);
    }

    var Direction(default,set):Vector3;

    private inline function set_Direction(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Direction = {1}", this, __value);
    }

    var Triangle(default,set):Int;

    private inline function set_Triangle(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Triangle = {1}", this, __value);
    }

    var Tags(default,set):Array<String>;

    private inline function set_Tags(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Tags = {1}", this, __value);
    }

}
