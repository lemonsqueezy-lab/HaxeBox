package sandbox;

@:native("Sandbox.ActionGraphIncludeAttribute")
final extern class ActionGraphIncludeAttribute extends system.Attribute {
    function new():Void;
    /** If true, double-clicking on an output of the declaring type will auto-expand this member. */
    var AutoExpand(default,default):Bool;
}
