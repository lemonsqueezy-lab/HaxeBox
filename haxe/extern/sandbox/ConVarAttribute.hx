package sandbox;

/** Console variable */
@:native("Sandbox.ConVarAttribute")
extern class ConVarAttribute {
    overload function new(name:String, flags:sandbox.ConVarFlags):Void;
    overload function new(flags:sandbox.ConVarFlags):Void;
    /** If unset the name will be set to the name of the method/property */
    var Name(default,default):String;
    /** Describes why this command exists */
    var Help(default,default):String;
    /** Minimum value for this command */
    var Min(default,default):Single;
    /** Maximum value for this command */
    var Max(default,default):Single;
    /** If true this variable is saved */
    var Saved(default,default):Bool;
    /** Describes the kind of convar this is */
    var Flags(default,default):sandbox.ConVarFlags;
    var TypeId(default,never):cs.system.Object;
}
