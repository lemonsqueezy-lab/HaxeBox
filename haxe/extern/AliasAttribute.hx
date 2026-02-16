package;

/** Alternate class name(s) for this type to the one specified via LibraryAttribute. This info can then be retrieved via DisplayInfo library. */
@:native("AliasAttribute")
extern class AliasAttribute extends system.Attribute {
    function new(tag:Array<String>):Void;
    /** The aliases for this class. */
    var Value(default,never):Array<String>;
}
