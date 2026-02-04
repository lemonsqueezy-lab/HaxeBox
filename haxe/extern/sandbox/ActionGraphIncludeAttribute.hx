package sandbox;

@:native("Sandbox.ActionGraphIncludeAttribute")
final extern class ActionGraphIncludeAttribute {
    function new():Void;
    /** If true, double-clicking on an output of the declaring type will auto-expand this member. */
    var AutoExpand(default,default):Bool;
    var TypeId(default,never):cs.system.Object;
}
