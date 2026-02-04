package sandbox;

@:native("Sandbox.ITagSet")
extern class ITagSet {
    /** Add a tag to the set. */
    overload function Add(tag:String):Void;
    overload function Add(set:sandbox.ITagSet):Void;
    function GetEnumerator():system.collections.generic.IEnumerator<String>;
    /** Get all default tags for this set. */
    function GetSuggested():system.collections.generic.IEnumerable<String>;
    /** Try to get all tags in the set. */
    function GetTokens():system.collections.generic.IReadOnlySet<UInt>;
    /** Does this set have the specified tag? */
    function Has(tag:String):Bool;
    /** Does this set have all of the specified tags? */
    overload function HasAll(tags:Array<String>):Bool;
    overload function HasAll(other:sandbox.ITagSet):Bool;
    overload function HasAll(tags:system.collections.generic.IEnumerable<String>):Bool;
    /** Does this set have any of the specified tag? */
    overload function HasAny(tags:Array<String>):Bool;
    overload function HasAny(other:sandbox.ITagSet):Bool;
    overload function HasAny(tags:system.collections.generic.IEnumerable<String>):Bool;
    /** Remove a tag from the set. */
    function Remove(tag:String):Void;
    /** Remove all tags from the set. */
    function RemoveAll():Void;
    /** Add or remove this tag, based on state */
    function Set(tag:String, state:Bool):Void;
    /** Set the tags to match this other tag set */
    function SetFrom(set:sandbox.ITagSet):Void;
    function ToString():String;
    /** If this tag is already here, remove it, else add it. */
    function Toggle(tag:String):Void;
    /** Try to get all tags in the set. */
    function TryGetAll():system.collections.generic.IEnumerable<String>;
}
