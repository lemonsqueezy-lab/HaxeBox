package;

/** Sets the category or the group of a type or a type member. This info can then be retrieved via DisplayInfo library. */
@:native("CategoryAttribute")
extern class CategoryAttribute extends system.Attribute {
    function new(value:String):Void;
    var Value(default,default):String;
}
