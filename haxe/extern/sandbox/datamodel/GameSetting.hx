package sandbox.datamodel;

/** A that has been marked with This is stored as project metadata so we can set up a game without loading it. */
@:native("Sandbox.DataModel.GameSetting")
final extern class GameSetting {
    /** A that has been marked with This is stored as project metadata so we can set up a game without loading it. */
    function new(Name:String, Title:String, Group:String, Default:String):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Group(default,set):String;

    private inline function set_Group(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Group = {1}", this, __value);
    }

    var Default(default,set):String;

    private inline function set_Default(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Default = {1}", this, __value);
    }

    var Options(default,set):system.collections.generic.List<sandbox.datamodel.gamesetting.Option>;

    private inline function set_Options(value:system.collections.generic.List<sandbox.datamodel.gamesetting.Option>):system.collections.generic.List<sandbox.datamodel.gamesetting.Option> {
        var __value:system.collections.generic.List<sandbox.datamodel.gamesetting.Option> = cast value;
        return untyped __cs__("{0}.Options = {1}", this, __value);
    }

    var Min(default,set):Null<Single>;

    private inline function set_Min(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.Min = {1}", this, __value);
    }

    var Max(default,set):Null<Single>;

    private inline function set_Max(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.Max = {1}", this, __value);
    }

    var Step(default,set):Null<Single>;

    private inline function set_Step(value:Null<Single>):Null<Single> {
        var __value:Null<Single> = cast value;
        return untyped __cs__("{0}.Step = {1}", this, __value);
    }

    function Deconstruct(Name:String, Title:String, Group:String, Default:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.datamodel.GameSetting):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
