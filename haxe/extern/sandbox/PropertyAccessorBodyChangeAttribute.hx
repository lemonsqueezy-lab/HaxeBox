package sandbox;

@:native("Sandbox.PropertyAccessorBodyChangeAttribute")
final extern class PropertyAccessorBodyChangeAttribute extends system.Attribute {
    function new(accessor:sandbox.PropertyAccessor):Void;
    var Accessor(default,never):sandbox.PropertyAccessor;
}
