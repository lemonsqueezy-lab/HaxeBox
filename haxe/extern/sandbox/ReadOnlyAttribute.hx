package sandbox;

/** Display this in the inspector - but don't let anyone edit it */
@:native("Sandbox.ReadOnlyAttribute")
final extern class ReadOnlyAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
