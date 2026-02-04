package sandbox;

/** Contains information for an individual hotload result message or error. */
@:native("Sandbox.HotloadResultEntry")
final extern class HotloadResultEntry {
    function new():Void;
    /** Hotload result category. */
    var Type(default,default):sandbox.HotloadEntryType;
    /** Contains the main information of the result. */
    var Message(default,default):String;
    /** If the result type is , contains the exception thrown. */
    var Exception(default,default):system.Exception;
    /** When relevant, contains the member that this result relates to. */
    var Member(default,default):system.reflection.MemberInfo;
    var Path(default,default):sandbox.hotload.ReferencePath;
    var MemberString(default,never):String;
    var Context(default,never):String;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.HotloadResultEntry):Bool;
    function GetHashCode():Int;
    /** Returns a string that represents the current object. */
    function ToString():String;
}
