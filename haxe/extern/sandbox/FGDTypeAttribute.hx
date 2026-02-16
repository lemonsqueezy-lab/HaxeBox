package sandbox;

/** Overrides the auto generated FGD type. */
@:native("Sandbox.FGDTypeAttribute")
extern class FGDTypeAttribute extends sandbox.AssetPathAttribute {
    function new(type:String, editor:String, editorArgs:String):Void;
    var Type(default,default):String;
    var Editor(default,default):String;
}
