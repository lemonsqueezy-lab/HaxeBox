package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.AddRoundRectPathCommand")
extern class AddRoundRectPathCommand {
    /** See . */
    function new(Rect:sandbox.Rect, Rx:Single, Ry:Single):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Rect(default,default):sandbox.Rect;
    var Rx(default,default):Single;
    var Ry(default,default):Single;
    function Deconstruct(Rect:sandbox.Rect, Rx:Single, Ry:Single):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.AddRoundRectPathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
