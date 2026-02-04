package sandbox.modelbuilder;

/** A bone definition for use with . */
@:native("Sandbox.ModelBuilder.Bone")
final extern class Bone {
    /** A bone definition for use with . */
    function new(Name:String, ParentName:String, Position:Vector3, Rotation:Rotation):Void;
    /** Name of the bone. */
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    /** Name of the parent bone. */
    var ParentName(default,set):String;

    private inline function set_ParentName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ParentName = {1}", this, __value);
    }

    /** Position of the bone, relative to its parent. */
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    /** Rotation of the bone, relative to its parent. */
    var Rotation(default,set):Rotation;

    private inline function set_Rotation(value:Rotation):Rotation {
        var __value:Rotation = cast value;
        return untyped __cs__("{0}.Rotation = {1}", this, __value);
    }

    function Deconstruct(Name:String, ParentName:String, Position:Vector3, Rotation:Rotation):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.modelbuilder.Bone):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
