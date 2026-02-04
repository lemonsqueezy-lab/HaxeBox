package sandbox;

@:native("Sandbox.PropertyAttribute")
extern class PropertyAttribute {
    function new():Void;
    /** The internal name of this property. This should be lowercase with no spaces. If unset the lowercased C# variable name is used. */
    var Name(default,default):String;
    /** The user friendly name of this property. If unset, it will be auto generated from C# variable name. */
    var Title(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
