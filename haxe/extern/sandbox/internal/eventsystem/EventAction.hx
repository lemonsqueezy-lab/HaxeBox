package sandbox.internal.eventsystem;

/** A method on a type */
@:native("Sandbox.Internal.EventSystem.EventAction")
extern class EventAction {
    function new():Void;
    var Priority(default,default):Int;
    var Class(default,default):sandbox.internal.eventsystem.EventClass;
    var Group(default,default):sandbox.internal.eventsystem.EventList;
    var Delegate(default,default):sandbox.internal.eventsystem.EventDelegate;
    var IsStatic(default,default):Bool;
    function CompareTo(other:sandbox.internal.eventsystem.EventAction):Int;
    function Destroy():Void;
}
