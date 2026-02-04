package sandbox.datamodel.gamesetting;

@:native("Sandbox.DataModel.GameSetting.Option")
final extern class Option {
    function new(Name:String, Icon:String):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    function Deconstruct(Name:String, Icon:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.datamodel.gamesetting.Option):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
