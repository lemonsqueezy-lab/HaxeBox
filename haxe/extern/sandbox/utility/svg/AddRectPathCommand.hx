package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.AddRectPathCommand")
extern class AddRectPathCommand extends sandbox.utility.svg.PathCommand {
    /** See . */
    overload function new(Rect:sandbox.Rect):Void;
    @:protected overload function new(original:sandbox.utility.svg.AddRectPathCommand):Void;
    var Rect(default,default):sandbox.Rect;
    function Deconstruct(Rect:sandbox.Rect):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.AddRectPathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
