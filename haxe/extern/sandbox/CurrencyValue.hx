package sandbox;

/** Describes money, in a certain currency */
@:native("Sandbox.CurrencyValue")
final extern class CurrencyValue {
    function new(price:haxe.Int64, currency:String):Void;
    var Currency(default,never):String;
    var Value(default,never):haxe.Int64;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.CurrencyValue):Bool;
    function Format():String;
    function GetHashCode():Int;
    function ToString():String;
}
