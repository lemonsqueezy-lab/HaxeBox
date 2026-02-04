package;

/** Alternate class name(s) for this type to the one specified via LibraryAttribute. This info can then be retrieved via DisplayInfo library. */
@:native("AliasAttribute")
extern class AliasAttribute {
    function new(tag:Array<String>):Void;
    /** The aliases for this class. */
    var Value(default,never):Array<String>;
    var TypeId(default,never):cs.system.Object;
}
