package sandbox.model;

/** Used to mark a property as a material group, for the editor */
@:native("Sandbox.Model.MaterialGroupAttribute")
final extern class MaterialGroupAttribute {
    function new():Void;
    var ModelParameter(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
