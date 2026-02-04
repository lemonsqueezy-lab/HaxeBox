package sandbox.helpers.undosystem;

@:native("Sandbox.Helpers.UndoSystem.Entry")
extern class Entry {
    function new():Void;
    var Name(default,default):String;
    var Undo(default,default):system.Action;
    var Redo(default,default):system.Action;
    var Image(default,default):cs.system.Object;
    var Timestamp(default,default):system.DateTime;
    var Locked(default,default):Bool;
}
