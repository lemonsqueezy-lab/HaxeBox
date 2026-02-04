package sandbox;

/** A prefab variable definition */
@:native("Sandbox.PrefabVariable")
extern class PrefabVariable {
    function new():Void;
    /** A unique id for this variable. This is what it will be referred to in code. */
    var Id(default,default):String;
    /** A user friendly title for this variable */
    var Title(default,default):String;
    /** A user friendly description for this variable */
    var Description(default,default):String;
    /** An optional group for this variable to belong to */
    var Group(default,default):String;
    /** Lower numbers appear first */
    var Order(default,default):Int;
    /** Component variables that are being targetted */
    var Targets(default,default):system.collections.generic.List<sandbox.prefabvariable.PrefabVariableTarget>;
    /** Add a target property */
    function AddTarget(id:system.Guid, propertyName:String):Void;
}
