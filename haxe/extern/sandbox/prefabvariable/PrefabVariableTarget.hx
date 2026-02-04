package sandbox.prefabvariable;

/** Targets a property in a component or gameobject. */
@:native("Sandbox.PrefabVariable.PrefabVariableTarget")
final extern class PrefabVariableTarget {
    /** Targets a property in a component or gameobject. */
    function new(Id:system.Guid, Property:String):Void;
    /** The Id of the gameobject or component. */
    var Id(default,set):system.Guid;

    private inline function set_Id(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    /** The name of the parameter on the target. */
    var Property(default,set):String;

    private inline function set_Property(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Property = {1}", this, __value);
    }

    function Deconstruct(Id:system.Guid, Property:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.prefabvariable.PrefabVariableTarget):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
