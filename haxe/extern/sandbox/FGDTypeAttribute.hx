package sandbox;

/** Overrides the auto generated FGD type. */
@:native("Sandbox.FGDTypeAttribute")
extern class FGDTypeAttribute {
    function new(type:String, editor:String, editorArgs:String):Void;
    var AssetTypeExtension(default,never):String;
    var TypeId(default,never):cs.system.Object;
    var Type(default,default):String;
    var Editor(default,default):String;
}
