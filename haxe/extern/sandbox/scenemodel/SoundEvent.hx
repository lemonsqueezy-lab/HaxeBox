package sandbox.scenemodel;

@:native("Sandbox.SceneModel.SoundEvent")
final extern class SoundEvent {
    function new(Name:String, Position:Vector3, AttachmentName:String):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var AttachmentName(default,set):String;

    private inline function set_AttachmentName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.AttachmentName = {1}", this, __value);
    }

    function Deconstruct(Name:String, Position:Vector3, AttachmentName:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.scenemodel.SoundEvent):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
