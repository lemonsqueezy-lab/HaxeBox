package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.QuadToPathCommand")
extern class QuadToPathCommand extends sandbox.utility.svg.PathCommand {
    /** See . */
    overload function new(X0:Single, Y0:Single, X1:Single, Y1:Single):Void;
    @:protected overload function new(original:sandbox.utility.svg.QuadToPathCommand):Void;
    var X0(default,default):Single;
    var Y0(default,default):Single;
    var X1(default,default):Single;
    var Y1(default,default):Single;
    function Deconstruct(X0:Single, Y0:Single, X1:Single, Y1:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.QuadToPathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
