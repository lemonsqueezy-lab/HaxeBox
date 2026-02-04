package sandbox;

/** This choices type is bitflags, so we should be able to choose more than one option at a time. */
@:native("Sandbox.BitFlagsAttribute")
extern class BitFlagsAttribute {
    function new():Void;
    var AssetTypeExtension(default,never):String;
    var TypeId(default,never):cs.system.Object;
    var Type(default,default):String;
    var Editor(default,default):String;
}
