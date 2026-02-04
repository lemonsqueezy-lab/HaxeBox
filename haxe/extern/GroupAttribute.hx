package;

/** Sets the category or the group of a type or a type member. This info can then be retrieved via DisplayInfo library. */
@:native("GroupAttribute")
extern class GroupAttribute {
    function new(value:String):Void;
    var Value(default,default):String;
    var Icon(default,default):String;
    /** If true then the group should start closed */
    var StartFolded(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
