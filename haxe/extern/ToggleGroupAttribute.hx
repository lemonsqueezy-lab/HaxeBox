package;

/** Very much like a GroupAttribute, except we're indicating that the group can be toggle on and off using the named property */
@:native("ToggleGroupAttribute")
extern class ToggleGroupAttribute {
    function new(value:String):Void;
    var Label(default,default):String;
    var Value(default,default):String;
    var Icon(default,default):String;
    /** If true then the group should start closed */
    var StartFolded(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
