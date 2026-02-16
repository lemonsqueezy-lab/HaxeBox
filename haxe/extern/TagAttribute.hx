package;

/** Adds a single or multiple tags for this type or member. Tags can then be retrieved via DisplayInfo library. */
@:native("TagAttribute")
extern class TagAttribute extends system.Attribute {
    function new(tag:Array<String>):Void;
    /** The tags to add for this type or member. */
    var Value(default,never):Array<String>;
    /** Returns all the tags as an enumerable. */
    function EnumerateValues():system.collections.generic.IEnumerable<String>;
}
