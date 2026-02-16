package;

/** Show this property if a given property within the same class has the given value. Used typically in the Editor Inspector. */
@:native("ShowIfAttribute")
extern class ShowIfAttribute extends HideIfAttribute {
    function new(propertyName:String, value:cs.system.Object):Void;
    overload function TestCondition(so:sandbox.SerializedObject):Bool;
    overload function TestCondition(targetObject:cs.system.Object, td:sandbox.TypeDescription):Bool;
}
