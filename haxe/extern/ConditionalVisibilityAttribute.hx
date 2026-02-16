package;

/** Hide a property if a condition matches. */
@:native("ConditionalVisibilityAttribute")
extern class ConditionalVisibilityAttribute extends sandbox.InspectorVisibilityAttribute {
    @:protected function new():Void;
    /** The test condition. */
    function TestCondition(targetObject:cs.system.Object, td:sandbox.TypeDescription):Bool;
}
