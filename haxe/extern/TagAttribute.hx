package;

/** Adds a single or multiple tags for this type or member. Tags can then be retrieved via DisplayInfo library. */
@:native("TagAttribute")
extern class TagAttribute {
    function new(tag:Array<String>):Void;
    /** The tags to add for this type or member. */
    var Value(default,never):Array<String>;
    var TypeId(default,never):cs.system.Object;
    /** Returns all the tags as an enumerable. */
    function EnumerateValues():system.collections.generic.IEnumerable<String>;
}
