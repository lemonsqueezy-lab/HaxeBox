package;

/** Sets the category or the group of a type or a type member. This info can then be retrieved via DisplayInfo library. */
@:native("CategoryAttribute")
extern class CategoryAttribute {
    function new(value:String):Void;
    var Value(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
