package;

/** Set the class name for this type or member. This info can then be retrieved via DisplayInfo library. */
@:native("ClassNameAttribute")
extern class ClassNameAttribute extends system.Attribute {
    function new(value:String):Void;
    var Value(default,default):String;
}
