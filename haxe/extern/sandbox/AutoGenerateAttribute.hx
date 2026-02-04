package sandbox;

/** Indicates that this type should generate meta data. Tagging your asset with this will mean that the .asset file is automatically generated - which means you don't have to do that. */
@:native("Sandbox.AutoGenerateAttribute")
extern class AutoGenerateAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
