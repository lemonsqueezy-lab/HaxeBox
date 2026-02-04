package;

/** Sets the description of a type or a type member. This attribute is usually applied automatically by codegen based on the XML comment of the type or member. This info can then be retrieved via DisplayInfo library. */
@:native("DescriptionAttribute")
extern class DescriptionAttribute {
    function new(value:String):Void;
    var Value(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
