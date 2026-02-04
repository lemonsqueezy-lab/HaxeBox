package sandbox.ui;

/** A list of shadows */
@:native("Sandbox.UI.ShadowList")
final extern class ShadowList {
    function new():Void;
    var Capacity(default,default):Int;
    var Count(default,never):Int;
    var Item(default,default):sandbox.ui.Shadow;
    var IsNone(default,default):Bool;
    /** Copy shadows from another list of shadows. */
    function AddFrom(other:sandbox.ui.ShadowList):Void;
    function GetHashCode():Int;
    /** Given 2 lists of shadows, perform linear interpolation on both lists and store the result in this list. Will work with mismatched shadow counts. */
    function SetFromLerp(a:sandbox.ui.ShadowList, b:sandbox.ui.ShadowList, frac:Single):Void;
}
