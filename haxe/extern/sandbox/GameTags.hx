package sandbox;

/** Entity Tags are strings you can set and check for on any entity. Internally these strings are tokenized and networked so they're also available clientside. */
@:native("Sandbox.GameTags")
extern class GameTags {
    /** Adds multiple tags. Calls EntityTags.Add for each tag. */
    overload function Add(tags:Array<String>):Void;
    overload function Add(tag:String):Void;
    function Flush():Void;
    /** Get all potential suggested tags that someone might want to add to this set. */
    function GetSuggested():system.collections.generic.IEnumerable<String>;
    /** Returns a list of ints, representing the tags. These are used internally by the engine. */
    function GetTokens():system.collections.generic.IReadOnlySet<UInt>;
    /** Returns true if this object (or its parents) has given tag. */
    overload function Has(tag:String):Bool;
    overload function Has(tag:String, includeAncestors:Bool):Bool;
    /** Returns true if this object has one or more tags from given tag list. */
    function HasAny(tagList:system.collections.generic.HashSet<String>):Bool;
    /** Try to remove the tag from this entity. */
    function Remove(tag:String):Void;
    /** Remove all tags */
    function RemoveAll():Void;
    /** Returns all the tags this object has. */
    overload function TryGetAll():system.collections.generic.IEnumerable<String>;
    overload function TryGetAll(includeAncestors:Bool):system.collections.generic.IEnumerable<String>;
}
