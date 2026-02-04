package sandbox;

/** Hide a property if a condition matches. */
@:native("Sandbox.InspectorVisibilityAttribute")
extern class InspectorVisibilityAttribute {
    var TypeId(default,never):cs.system.Object;
    function TestCondition(so:sandbox.SerializedObject):Bool;
}
