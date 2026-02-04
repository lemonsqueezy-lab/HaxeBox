package sandbox.scenemodel;

@:native("Sandbox.SceneModel.FootstepEvent")
final extern class FootstepEvent {
    function new(FootId:Int, Transform:Transform, Volume:Single, AttachmentName:String):Void;
    var FootId(default,set):Int;

    private inline function set_FootId(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.FootId = {1}", this, __value);
    }

    var Transform(default,set):Transform;

    private inline function set_Transform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    var Volume(default,set):Single;

    private inline function set_Volume(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Volume = {1}", this, __value);
    }

    var AttachmentName(default,set):String;

    private inline function set_AttachmentName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.AttachmentName = {1}", this, __value);
    }

    function Deconstruct(FootId:Int, Transform:Transform, Volume:Single, AttachmentName:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.scenemodel.FootstepEvent):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
