package sandbox.helpers;

/** A system that aims to wrap the main reusable functionality of an undo system */
@:native("Sandbox.Helpers.UndoSystem")
extern class UndoSystem {
    function new():Void;
    /** Backwards stack */
    var Back(default,never):system.collections.generic.Stack<sandbox.helpers.undosystem.Entry>;
    /** Forwards stack, gets cleared when a new undo is added */
    var Forward(default,never):system.collections.generic.Stack<sandbox.helpers.undosystem.Entry>;
    var OnUndo(default,default):system.Action1<sandbox.helpers.undosystem.Entry>;
    var OnRedo(default,default):system.Action1<sandbox.helpers.undosystem.Entry>;
    /** Clear the history and take an initial snapshot. You should call this right after a load, or a new project. */
    function Initialize():Void;
    /** Insert a new undo entry */
    function Insert(title:String, undo:system.Action, redo:system.Action):sandbox.helpers.undosystem.Entry;
    /** Instigate a redo, returns true if we found a successful undo */
    function Redo():Bool;
    /** Provide a function that returns an action to call on undo/redo. This generally is a function that saves and restores the entire state of a project. */
    function SetSnapshotFunction(snapshot:system.Func1<system.Action>):Void;
    /** Should be called after you make a change to your project. The snapshot system is good for self contained projects that can be serialized and deserialized quickly. */
    function Snapshot(changeTitle:String):Void;
    /** Instigate an undo. Return true if we found a successful undo */
    function Undo():Bool;
}
