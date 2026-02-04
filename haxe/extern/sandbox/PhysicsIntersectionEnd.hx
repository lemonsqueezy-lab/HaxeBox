package sandbox;

@:native("Sandbox.PhysicsIntersectionEnd")
final extern class PhysicsIntersectionEnd {
    function new(Self:sandbox.physicscontact.Target, Other:sandbox.physicscontact.Target):Void;
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

    function Deconstruct(Self:sandbox.physicscontact.Target, Other:sandbox.physicscontact.Target):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.PhysicsIntersectionEnd):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
