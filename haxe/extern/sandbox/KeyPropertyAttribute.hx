package sandbox;

/** Mark this property as the key property - which means that it can represent the whole object in a single line, while usually offering an advanced mode to view the entire object. */
@:native("Sandbox.KeyPropertyAttribute")
extern class KeyPropertyAttribute extends system.Attribute {
    function new():Void;
}
