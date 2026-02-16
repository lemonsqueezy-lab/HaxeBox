package;

/** Very much like a GroupAttribute, except we're indicating that the group can be toggle on and off using the named property */
@:native("ToggleGroupAttribute")
extern class ToggleGroupAttribute extends GroupAttribute {
    function new(value:String):Void;
    var Label(default,default):String;
}
