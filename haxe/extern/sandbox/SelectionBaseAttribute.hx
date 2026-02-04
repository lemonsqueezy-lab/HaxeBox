package sandbox;

/** Apply this attribute to a component class to mark its GameObject as a selection base for Scene View picking. For example, if you click on a child object within a Prefab, the root of the Prefab is selected by default. With the SelectionBase attribute, you can designate a specific component (and its GameObject) to be treated as a selection base, ensuring it is picked when clicking in the Scene View. */
@:native("Sandbox.SelectionBaseAttribute")
final extern class SelectionBaseAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
