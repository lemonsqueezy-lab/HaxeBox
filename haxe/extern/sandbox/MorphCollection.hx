package sandbox;

/** Used to access and manipulate morphs. */
@:native("Sandbox.MorphCollection")
extern class MorphCollection {
    /** Amount of morphs. */
    var Count(default,never):Int;
    /** Get indexed morph value (Note: Currently, this only gets the override morph value) */
    overload function Get(i:Int):Single;
    overload function Get(name:String):Single;
    /** Retrieve name of a morph at given index. */
    function GetName(index:Int):String;
    /** Reset morph number i to its default value. */
    overload function Reset(i:Int):Void;
    overload function Reset(name:String):Void;
    /** Reset all morphs to their default values. */
    function ResetAll():Void;
    /** Set indexed morph to this value. */
    overload function Set(i:Int, weight:Single):Void;
    overload function Set(name:String, weight:Single):Void;
}
