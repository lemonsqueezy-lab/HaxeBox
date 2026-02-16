package sandbox;

/** Indicates that this propery can be edited by the client, in a game like Sandbox Mode. In reality this is used however the game wants to implement it. */
@:native("Sandbox.ClientEditableAttribute")
final extern class ClientEditableAttribute extends system.Attribute {
    function new():Void;
}
