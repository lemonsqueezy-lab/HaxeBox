package sandbox.decaldefinition;

@:native("Sandbox.DecalDefinition.DecalEntry")
extern class DecalEntry {
    function new():Void;
    var Material(default,default):sandbox.Material;
    var Depth(default,default):RangedFloat;
    var Rotation(default,default):RangedFloat;
    var Width(default,default):RangedFloat;
    var Height(default,default):RangedFloat;
}
