package sandbox;

/** When added to a property on a Component, we'll try to make that component value non null. We will first look on the GameObject for the component type. If it's not found, we'll create one. */
@:native("Sandbox.RequireComponentAttribute")
extern class RequireComponentAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
