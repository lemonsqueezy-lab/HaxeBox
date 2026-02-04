package sandbox.scenemodel;

@:native("Sandbox.SceneModel.AnimTagEvent")
final extern class AnimTagEvent {
    function new(Name:String, Status:sandbox.scenemodel.AnimTagStatus):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Status(default,set):sandbox.scenemodel.AnimTagStatus;

    private inline function set_Status(value:sandbox.scenemodel.AnimTagStatus):sandbox.scenemodel.AnimTagStatus {
        var __value:sandbox.scenemodel.AnimTagStatus = cast value;
        return untyped __cs__("{0}.Status = {1}", this, __value);
    }

    function Deconstruct(Name:String, Status:sandbox.scenemodel.AnimTagStatus):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.scenemodel.AnimTagEvent):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
