package sandbox.component.ipressable;

/** A tooltip to show when looking at this pressable */
@:native("Sandbox.Component.IPressable.Tooltip")
final extern class Tooltip {
    /** A tooltip to show when looking at this pressable */
    function new(Title:String, Icon:String, Description:String, Enabled:Bool, Pressable:sandbox.component.IPressable):Void;
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Enabled(default,set):Bool;

    private inline function set_Enabled(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Enabled = {1}", this, __value);
    }

    var Pressable(default,set):sandbox.component.IPressable;

    private inline function set_Pressable(value:sandbox.component.IPressable):sandbox.component.IPressable {
        var __value:sandbox.component.IPressable = cast value;
        return untyped __cs__("{0}.Pressable = {1}", this, __value);
    }

    function Deconstruct(Title:String, Icon:String, Description:String, Enabled:Bool, Pressable:sandbox.component.IPressable):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.component.ipressable.Tooltip):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
