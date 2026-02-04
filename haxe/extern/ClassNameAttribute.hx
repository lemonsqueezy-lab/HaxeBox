package;

/** Set the class name for this type or member. This info can then be retrieved via DisplayInfo library. */
@:native("ClassNameAttribute")
extern class ClassNameAttribute {
    function new(value:String):Void;
    var Value(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
