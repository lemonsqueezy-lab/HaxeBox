package sandbox.internal.eventsystem;

/** A Type with events on it */
@:native("Sandbox.Internal.EventSystem.EventClass")
extern class EventClass {
    function new():Void;
    var Assembly(default,default):String;
    var Type(default,default):cs.system.Type;
    var Events(default,default):system.collections.generic.List<sandbox.internal.eventsystem.EventAction>;
    var Targets(default,default):system.collections.generic.List<cs.system.Object>;
    function Destroy():Void;
}
