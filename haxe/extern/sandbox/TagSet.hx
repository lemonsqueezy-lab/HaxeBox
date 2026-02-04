package sandbox;

@:native("Sandbox.TagSet")
extern class TagSet {
    overload function new():Void;
    overload function new(tags:system.collections.generic.IEnumerable<String>):Void;
    var IsEmpty(default,never):Bool;
    function Add(tag:String):Void;
    function GetHashCode():Int;
    /** Returns a list of ints, representing the tags. These are used internally by the engine. */
    function GetTokens():system.collections.generic.IReadOnlySet<UInt>;
    function Has(tag:String):Bool;
    function Remove(tag:String):Void;
    function RemoveAll():Void;
    function TryGetAll():system.collections.generic.IEnumerable<String>;
}
