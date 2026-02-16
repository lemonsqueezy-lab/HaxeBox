package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.AddRoundRectPathCommand")
extern class AddRoundRectPathCommand extends sandbox.utility.svg.PathCommand {
    /** See . */
    overload function new(Rect:sandbox.Rect, Rx:Single, Ry:Single):Void;
    @:protected overload function new(original:sandbox.utility.svg.AddRoundRectPathCommand):Void;
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
