package;

/** Hide a property if a condition matches. */
@:native("ConditionalVisibilityAttribute")
extern class ConditionalVisibilityAttribute {
    var TypeId(default,never):cs.system.Object;
    /** The test condition. */
    function TestCondition(targetObject:cs.system.Object, td:sandbox.TypeDescription):Bool;
}
