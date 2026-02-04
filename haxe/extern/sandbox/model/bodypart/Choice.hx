package sandbox.model.bodypart;

@:native("Sandbox.Model.BodyPart.Choice")
final extern class Choice {
    function new(Name:String, Mask:system.UInt64):Void;
    var Name(default,default):String;
    var Mask(default,default):system.UInt64;
    function Deconstruct(Name:String, Mask:system.UInt64):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.model.bodypart.Choice):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
