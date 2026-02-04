package sandbox.upgraders;

/** Use this attribute to specify that a should attempt to process each object before all other specified types. */
@:native("Sandbox.Upgraders.AttemptBeforeAttribute")
final extern class AttemptBeforeAttribute {
    /** Create an instance of with a list of types. */
    function new(instanceUpgraderTypes:Array<cs.system.Type>):Void;
    /** types that should attempt to process each object after the type this attribute is on. */
    var InstanceUpgraderTypes(default,never):Array<cs.system.Type>;
    var TypeId(default,never):cs.system.Object;
}
