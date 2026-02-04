package;

/** This entity is expected to be spawnable in-game, like from Sandbox's spawnmenu. */
@:native("SpawnableAttribute")
final extern class SpawnableAttribute {
    function new():Void;
    /** The tags to add for this type or member. */
    var Value(default,never):Array<String>;
    var TypeId(default,never):cs.system.Object;
}
