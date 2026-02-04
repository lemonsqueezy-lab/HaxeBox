package sandbox;

/** Allows fast lookups of morph variables */
@:native("Sandbox.ModelMorphs")
final extern class ModelMorphs {
    var Model(default,never):sandbox.Model;
    var Count(default,never):Int;
    var Names(default,never):Array<String>;
    /** Get the index of a morph by its name */
    function GetIndex(name:String):Int;
    /** Get the name of a morph by its index. */
    function GetName(i:Int):String;
}
