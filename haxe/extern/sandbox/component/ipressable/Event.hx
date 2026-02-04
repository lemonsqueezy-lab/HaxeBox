package sandbox.component.ipressable;

/** Describes who pressed it. */
@:native("Sandbox.Component.IPressable.Event")
final extern class Event {
    /** Describes who pressed it. */
    function new(Source:sandbox.Component, Ray:Null<Ray>):Void;
    var Source(default,set):sandbox.Component;

    private inline function set_Source(value:sandbox.Component):sandbox.Component {
        var __value:sandbox.Component = cast value;
        return untyped __cs__("{0}.Source = {1}", this, __value);
    }

    var Ray(default,set):Null<Ray>;

    private inline function set_Ray(value:Null<Ray>):Null<Ray> {
        var __value:Null<Ray> = cast value;
        return untyped __cs__("{0}.Ray = {1}", this, __value);
    }

    function Deconstruct(Source:sandbox.Component, Ray:Null<Ray>):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.component.ipressable.Event):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
