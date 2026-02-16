package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.MoveToPathCommand")
extern class MoveToPathCommand extends sandbox.utility.svg.PathCommand {
    /** See . */
    overload function new(X:Single, Y:Single):Void;
    @:protected overload function new(original:sandbox.utility.svg.MoveToPathCommand):Void;
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
