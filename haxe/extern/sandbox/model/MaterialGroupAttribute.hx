package sandbox.model;

/** Used to mark a property as a material group, for the editor */
@:native("Sandbox.Model.MaterialGroupAttribute")
final extern class MaterialGroupAttribute extends system.Attribute {
    function new():Void;
    var ModelParameter(default,default):String;
}
