package sandbox.skinnedmodelrenderer;

@:native("Sandbox.SkinnedModelRenderer.BoneVelocity")
final extern class BoneVelocity {
    function new(Linear:Vector3, Angular:Vector3):Void;
    var Linear(default,set):Vector3;

    private inline function set_Linear(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Linear = {1}", this, __value);
    }

    var Angular(default,set):Vector3;

    private inline function set_Angular(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Angular = {1}", this, __value);
    }

    function Deconstruct(Linear:Vector3, Angular:Vector3):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.skinnedmodelrenderer.BoneVelocity):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
