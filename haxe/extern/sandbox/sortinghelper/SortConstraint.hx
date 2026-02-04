package sandbox.sortinghelper;

@:native("Sandbox.SortingHelper.SortConstraint")
final extern class SortConstraint {
    function new(earlierIndex:Int, laterIndex:Int):Void;
    var IsZero(default,never):Bool;
    var Complement(default,never):sandbox.sortinghelper.SortConstraint;
    var EarlierIndex(default,never):Int;
    var LaterIndex(default,never):Int;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.sortinghelper.SortConstraint):Bool;
    function GetHashCode():Int;
}
