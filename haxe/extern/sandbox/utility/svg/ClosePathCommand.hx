package sandbox.utility.svg;

/** See . */
@:native("Sandbox.Utility.Svg.ClosePathCommand")
extern class ClosePathCommand {
    function new():Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.ClosePathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
