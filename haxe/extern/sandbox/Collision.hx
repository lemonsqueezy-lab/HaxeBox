package sandbox;

@:native("Sandbox.Collision")
final extern class Collision {
    function new(Self:sandbox.CollisionSource, Other:sandbox.CollisionSource, Contact:sandbox.PhysicsContact):Void;
    var Self(default,set):sandbox.CollisionSource;

    private inline function set_Self(value:sandbox.CollisionSource):sandbox.CollisionSource {
        var __value:sandbox.CollisionSource = cast value;
        return untyped __cs__("{0}.Self = {1}", this, __value);
    }

    var Other(default,set):sandbox.CollisionSource;

    private inline function set_Other(value:sandbox.CollisionSource):sandbox.CollisionSource {
        var __value:sandbox.CollisionSource = cast value;
        return untyped __cs__("{0}.Other = {1}", this, __value);
    }

    var Contact(default,set):sandbox.PhysicsContact;

    private inline function set_Contact(value:sandbox.PhysicsContact):sandbox.PhysicsContact {
        var __value:sandbox.PhysicsContact = cast value;
        return untyped __cs__("{0}.Contact = {1}", this, __value);
    }

    function Deconstruct(Self:sandbox.CollisionSource, Other:sandbox.CollisionSource, Contact:sandbox.PhysicsContact):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.Collision):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
