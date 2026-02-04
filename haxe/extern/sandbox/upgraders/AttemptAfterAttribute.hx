package sandbox.upgraders;

/** Use this attribute to specify that a should attempt to process each object after all other specified types. */
@:native("Sandbox.Upgraders.AttemptAfterAttribute")
final extern class AttemptAfterAttribute {
    /** Create an instance of with a list of types. */
    function new(instanceUpgraderTypes:Array<cs.system.Type>):Void;
    /** types that should attempt to process each object before the type this attribute is on. */
    var InstanceUpgraderTypes(default,never):Array<cs.system.Type>;
    var TypeId(default,never):cs.system.Object;
}
