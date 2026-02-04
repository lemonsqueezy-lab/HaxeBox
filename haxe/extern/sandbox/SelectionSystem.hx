package sandbox;

/** An ordered collection of unique objects with add/remove callbacks. Maintains insertion order and provides change notifications. */
@:native("Sandbox.SelectionSystem")
extern class SelectionSystem {
    function new():Void;
    /** Invoked when an item is added to the selection. */
    var OnItemAdded(default,default):system.Action1<cs.system.Object>;
    /** Invoked when an item is removed from the selection. */
    var OnItemRemoved(default,default):system.Action1<cs.system.Object>;
    /** Gets the number of selected objects. */
    var Count(default,never):Int;
    /** Adds an object to the selection. */
    function Add(obj:cs.system.Object):Bool;
    /** Checks if the selection contains any objects. */
    function Any():Bool;
    /** Removes all objects from the selection, invoking OnItemRemoved for each. */
    function Clear():Void;
    /** Checks if an object is in the selection. */
    function Contains(obj:cs.system.Object):Bool;
    /** Returns an enumerator that iterates through the selected objects in order. */
    function GetEnumerator():system.collections.generic.IEnumerator<cs.system.Object>;
    /** Gets a hash code that changes whenever the collection is modified. Useful for detecting selection changes. */
    function GetHashCode():Int;
    /** Removes an object from the selection. */
    function Remove(obj:cs.system.Object):Bool;
    /** Clears the selection and sets it to a single object. */
    function Set(obj:cs.system.Object):Bool;
}
