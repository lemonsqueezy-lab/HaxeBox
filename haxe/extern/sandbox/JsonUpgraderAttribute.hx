package sandbox;

/** An attribute that describes a version update for a JSON object. */
@:native("Sandbox.JsonUpgraderAttribute")
extern class JsonUpgraderAttribute {
    function new(type:cs.system.Type, version:Int):Void;
    /** The version of this upgrade. */
    var Version(default,default):Int;
    /** The type we're targeting for this upgrade. */
    var Type(default,default):cs.system.Type;
    var TypeId(default,never):cs.system.Object;
}
