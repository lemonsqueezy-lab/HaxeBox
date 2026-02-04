package;

/** Sets the title or a "nice name" of a type or a type member. This info can then be retrieved via DisplayInfo library. */
@:native("TitleAttribute")
extern class TitleAttribute {
    function new(value:String):Void;
    var Value(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
