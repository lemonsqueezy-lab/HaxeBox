package sandbox.utility.svg;

/** See , . */
@:native("Sandbox.Utility.Svg.AddPolyPathCommand")
extern class AddPolyPathCommand extends sandbox.utility.svg.PathCommand {
    @:protected overload function new(original:sandbox.utility.svg.AddPolyPathCommand):Void;
    /** See , . */
    overload function new(Points:system.collections.generic.IReadOnlyList<Vector2>, Close:Bool):Void;
    var Points(default,default):system.collections.generic.IReadOnlyList<Vector2>;
    var Close(default,default):Bool;
    function Deconstruct(Points:system.collections.generic.IReadOnlyList<Vector2>, Close:Bool):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.utility.svg.AddPolyPathCommand):Bool;
    overload function Equals(other:sandbox.utility.svg.PathCommand):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
