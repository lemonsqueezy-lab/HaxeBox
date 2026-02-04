package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.ArcToPathCommand")
extern class ArcToPathCommand {
    /** See . */
    function new(Rx:Single, Ry:Single, XAxisRotate:Single, LargeArc:sandbox.utility.svg.PathArcSize, Sweep:sandbox.utility.svg.PathDirection, X:Single, Y:Single):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Rx(default,default):Single;
    var Ry(default,default):Single;
    var XAxisRotate(default,default):Single;
    var LargeArc(default,default):sandbox.utility.svg.PathArcSize;
    var Sweep(default,default):sandbox.utility.svg.PathDirection;
    var X(default,default):Single;
    var Y(default,default):Single;
    function Deconstruct(Rx:Single, Ry:Single, XAxisRotate:Single, LargeArc:sandbox.utility.svg.PathArcSize, Sweep:sandbox.utility.svg.PathDirection, X:Single, Y:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.ArcToPathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
