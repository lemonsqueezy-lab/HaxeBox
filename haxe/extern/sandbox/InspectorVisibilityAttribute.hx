package sandbox;

/** Hide a property if a condition matches. */
@:native("Sandbox.InspectorVisibilityAttribute")
extern class InspectorVisibilityAttribute extends system.Attribute {
    @:protected function new():Void;
    function TestCondition(so:sandbox.SerializedObject):Bool;
}
