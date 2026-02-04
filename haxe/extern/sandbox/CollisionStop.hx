package sandbox;

@:native("Sandbox.CollisionStop")
final extern class CollisionStop {
    function new(Self:sandbox.CollisionSource, Other:sandbox.CollisionSource):Void;
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

    function Deconstruct(Self:sandbox.CollisionSource, Other:sandbox.CollisionSource):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.CollisionStop):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
