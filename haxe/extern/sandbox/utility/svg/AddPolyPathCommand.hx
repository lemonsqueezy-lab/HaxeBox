package sandbox.utility.svg;

/** See , . */
@:native("Sandbox.Utility.Svg.AddPolyPathCommand")
extern class AddPolyPathCommand {
    /** See , . */
    function new(Points:system.collections.generic.IReadOnlyList<Vector2>, Close:Bool):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
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
