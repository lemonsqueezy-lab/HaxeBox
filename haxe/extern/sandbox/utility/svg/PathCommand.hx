package sandbox.utility.svg;

/** Base class for SVG path commands. */
@:native("Sandbox.Utility.Svg.PathCommand")
extern class PathCommand {
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
