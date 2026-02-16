package sandbox;

/** Display this in the inspector - but don't let anyone edit it */
@:native("Sandbox.ReadOnlyAttribute")
final extern class ReadOnlyAttribute extends system.Attribute {
    function new():Void;
}
