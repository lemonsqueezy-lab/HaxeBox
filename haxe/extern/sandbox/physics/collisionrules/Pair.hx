package sandbox.physics.collisionrules;

/** A pair of case- and order-insensitive tags, used as a key to look up a . */
@:native("Sandbox.Physics.CollisionRules.Pair")
final extern class Pair {
    /** Initializes from a pair of tags. */
    function new(left:String, right:String):Void;
    /** First of the two tags. */
    var Left(default,never):String;
    /** Second of the two tags. */
    var Right(default,never):String;
    /** Returns true if either or matches the given tag. */
    function Contains(tag:String):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.physics.collisionrules.Pair):Bool;
    function GetEnumerator():system.collections.generic.IEnumerator<String>;
    function GetHashCode():Int;
    function ToString():String;
}
