package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.ClosePathCommand")
extern class ClosePathCommand extends sandbox.utility.svg.PathCommand {
    overload function new():Void;
    @:protected overload function new(original:sandbox.utility.svg.ClosePathCommand):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.ClosePathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
