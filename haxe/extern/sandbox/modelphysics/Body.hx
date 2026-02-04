package sandbox.modelphysics;

/** Represents a attached to a specific bone with a local transform. */
@:native("Sandbox.ModelPhysics.Body")
final extern class Body {
    /** Represents a attached to a specific bone with a local transform. */
    function new(Component:sandbox.Rigidbody, Bone:Int, LocalTransform:Transform):Void;
    var Component(default,set):sandbox.Rigidbody;

    private inline function set_Component(value:sandbox.Rigidbody):sandbox.Rigidbody {
        var __value:sandbox.Rigidbody = cast value;
        return untyped __cs__("{0}.Component = {1}", this, __value);
    }

    var Bone(default,set):Int;

    private inline function set_Bone(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Bone = {1}", this, __value);
    }

    var LocalTransform(default,set):Transform;

    private inline function set_LocalTransform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.LocalTransform = {1}", this, __value);
    }

    function Deconstruct(Component:sandbox.Rigidbody, Bone:Int, LocalTransform:Transform):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.modelphysics.Body):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
