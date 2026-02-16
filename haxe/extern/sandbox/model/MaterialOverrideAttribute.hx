package sandbox.model;

/** Used to mark a property as a material material override dictionary, for the editor */
@:native("Sandbox.Model.MaterialOverrideAttribute")
final extern class MaterialOverrideAttribute extends system.Attribute {
    function new():Void;
    var ModelParameter(default,default):String;
}
