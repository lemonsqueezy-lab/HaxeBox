package sandbox;

/** Some properties are not meant for the average user, hide them unless they really want to see them. */
@:native("Sandbox.AdvancedAttribute")
extern class AdvancedAttribute {
    function new():Void;
    var TypeId(default,never):cs.system.Object;
}
