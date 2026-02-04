package sandbox.physics;

/** This is a JSON serializable description of the physics's collision rules. This allows us to send it to the engine - and store it in a string table (which is networked to the client). You shouldn't really ever have to mess with this, it's just used internally. */
@:native("Sandbox.Physics.CollisionRules")
extern class CollisionRules {
    function new():Void;
    var Version(default,never):Int;
    /** If no pair matching is found, this is what we'll use */
    var Defaults(default,default):system.collections.generic.Dictionary<String,sandbox.physics.collisionrules.Result>;
    /** What happens when a pair collides */
    var Pairs(default,default):system.collections.generic.Dictionary<sandbox.physics.collisionrules.Pair,sandbox.physics.collisionrules.Result>;
    /** All tags with either an entry in or . */
    var Tags(default,never):system.collections.generic.IEnumerable<String>;
    /** Gets or sets in its serialized form for JSON. */
    var SerializedPairs(default,never):system.text.json.nodes.JsonNode;
    var Guid(default,default):system.Guid;
    /** Remove duplicates etc */
    function Clean():Void;
    /** Gets the specific collision rule for a pair of tags. */
    function GetCollisionRule(left:String, right:String):sandbox.physics.collisionrules.Result;
    function GetHashCode():Int;
    @:protected function OnValidate():Void;
}
