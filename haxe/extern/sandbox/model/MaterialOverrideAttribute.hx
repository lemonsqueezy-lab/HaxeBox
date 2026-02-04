package sandbox.model;

/** Used to mark a property as a material material override dictionary, for the editor */
@:native("Sandbox.Model.MaterialOverrideAttribute")
final extern class MaterialOverrideAttribute {
    function new():Void;
    var ModelParameter(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
