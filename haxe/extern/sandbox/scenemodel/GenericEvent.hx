package sandbox.scenemodel;

@:native("Sandbox.SceneModel.GenericEvent")
final extern class GenericEvent {
    function new(Type:String, Int:Int, Float:Single, String:String, Vector:Vector3):Void;
    var Type(default,set):String;

    private inline function set_Type(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Type = {1}", this, __value);
    }

    var Int(default,set):Int;

    private inline function set_Int(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Int = {1}", this, __value);
    }

    var Float(default,set):Single;

    private inline function set_Float(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Float = {1}", this, __value);
    }

    var String(default,set):String;

    private inline function set_String(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.String = {1}", this, __value);
    }

    var Vector(default,set):Vector3;

    private inline function set_Vector(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Vector = {1}", this, __value);
    }

    function Deconstruct(Type:String, Int:Int, Float:Single, String:String, Vector:Vector3):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.scenemodel.GenericEvent):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
