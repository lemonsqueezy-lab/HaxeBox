package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.MoveToPathCommand")
extern class MoveToPathCommand {
    /** See . */
    function new(X:Single, Y:Single):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var X(default,default):Single;
    var Y(default,default):Single;
    function Deconstruct(X:Single, Y:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.MoveToPathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
