package sandbox;

/** The low level input of a GameObject.Clone */
@:native("Sandbox.CloneConfig")
final extern class CloneConfig {
    function new(transform:Transform, parent:sandbox.GameObject, startEnabled:Bool, name:String):Void;
    var StartEnabled(default,set):Bool;

    private inline function set_StartEnabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.StartEnabled = {1}", this, __value);
    }

    var Transform(default,set):Transform;

    private inline function set_Transform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Parent(default,set):sandbox.GameObject;

    private inline function set_Parent(value:sandbox.GameObject):sandbox.GameObject {
        var __value:sandbox.GameObject = cast value;
        return untyped __cs__("{0}.Parent = {1}", this, __value);
    }

    var PrefabVariables(default,set):system.collections.generic.Dictionary<String,cs.system.Object>;

    private inline function set_PrefabVariables(value:system.collections.generic.Dictionary<String,cs.system.Object>):system.collections.generic.Dictionary<String,cs.system.Object> {
        var __value:system.collections.generic.Dictionary<String,cs.system.Object> = cast value;
        return untyped __cs__("{0}.PrefabVariables = {1}", this, __value);
    }

}
