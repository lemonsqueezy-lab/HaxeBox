package sandbox;

/** Force a delegate-type property to only have a single attached Action Graph. */
@:native("Sandbox.SingleActionAttribute")
final extern class SingleActionAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
