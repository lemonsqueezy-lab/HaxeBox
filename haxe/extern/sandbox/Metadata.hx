package sandbox;

/** A simple class for storing and retrieving metadata values. */
@:native("Sandbox.Metadata")
extern class Metadata {
    function new():Void;
    function GetValueOrDefault<T>(key:String, defaultValue:T):T;
    /** Set a value with the specified key. */
    function SetValue(key:String, value:cs.system.Object):Void;
    function TryGetValue<T>(key:String, outValue:T):Bool;
}
