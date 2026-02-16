package sandbox;

/** Some properties are not meant for the average user, hide them unless they really want to see them. */
@:native("Sandbox.AdvancedAttribute")
extern class AdvancedAttribute extends system.Attribute {
    function new():Void;
}
