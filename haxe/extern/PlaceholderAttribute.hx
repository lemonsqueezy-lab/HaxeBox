package;

/** Add placeholder text, typically displayed for string properties when the text entry field is empty. This info can then be retrieved via DisplayInfo library. */
@:native("PlaceholderAttribute")
extern class PlaceholderAttribute extends system.Attribute {
    function new(value:String):Void;
    var Value(default,default):String;
}
