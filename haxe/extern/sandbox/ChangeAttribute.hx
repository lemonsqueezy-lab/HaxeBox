package sandbox;

/** This will invoke a method when the property changes. It can be used with any property but is especially useful when combined with [Sync] or [ConVar]. If no name is provided, we will try to call On[PropertyName]Changed. The callback should have 2 arguments - oldValue and newValue, both of the same type as the property itself. */
@:native("Sandbox.ChangeAttribute")
extern class ChangeAttribute {
    function new(name:String):Void;
    /** Name of the method to call on change. If no name is provided, we will try to call On[PropertyName]Changed. */
    var Name(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
