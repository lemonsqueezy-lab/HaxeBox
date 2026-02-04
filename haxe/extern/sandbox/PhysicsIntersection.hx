package sandbox;

@:native("Sandbox.PhysicsIntersection")
final extern class PhysicsIntersection {
    function new(Self:sandbox.physicscontact.Target, Other:sandbox.physicscontact.Target, Contact:sandbox.PhysicsContact):Void;
    var Self(default,set):sandbox.physicscontact.Target;

    private inline function set_Self(value:sandbox.physicscontact.Target):sandbox.physicscontact.Target {
        var __value:sandbox.physicscontact.Target = cast value;
        return untyped __cs__("{0}.Self = {1}", this, __value);
    }

    var Other(default,set):sandbox.physicscontact.Target;

    private inline function set_Other(value:sandbox.physicscontact.Target):sandbox.physicscontact.Target {
        var __value:sandbox.physicscontact.Target = cast value;
        return untyped __cs__("{0}.Other = {1}", this, __value);
    }

    var Contact(default,set):sandbox.PhysicsContact;

    private inline function set_Contact(value:sandbox.PhysicsContact):sandbox.PhysicsContact {
        var __value:sandbox.PhysicsContact = cast value;
        return untyped __cs__("{0}.Contact = {1}", this, __value);
    }

    function Deconstruct(Self:sandbox.physicscontact.Target, Other:sandbox.physicscontact.Target, Contact:sandbox.PhysicsContact):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.PhysicsIntersection):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
