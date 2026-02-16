package sandbox.ui;

/** A list of shadows */
@:native("Sandbox.UI.ShadowList")
final extern class ShadowList extends system.collections.generic.List<sandbox.ui.Shadow> {
    function new():Void;
    var IsNone(default,default):Bool;
    /** Copy shadows from another list of shadows. */
    function AddFrom(other:sandbox.ui.ShadowList):Void;
    function GetHashCode():Int;
    /** Given 2 lists of shadows, perform linear interpolation on both lists and store the result in this list. Will work with mismatched shadow counts. */
    function SetFromLerp(a:sandbox.ui.ShadowList, b:sandbox.ui.ShadowList, frac:Single):Void;
}
