package;

/** Hide this property if a given property within the same class has the given value. Used typically in the Editor Inspector. */
@:native("HideIfAttribute")
extern class HideIfAttribute {
    function new(propertyName:String, value:cs.system.Object):Void;
    /** Property name to test. */
    var PropertyName(default,default):String;
    /** Property value to test against. */
    var Value(default,default):cs.system.Object;
    var TypeId(default,never):cs.system.Object;
    overload function TestCondition(so:sandbox.SerializedObject):Bool;
    overload function TestCondition(targetObject:cs.system.Object, td:sandbox.TypeDescription):Bool;
}
