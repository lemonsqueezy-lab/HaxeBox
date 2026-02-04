package sandbox;

/** A convenience JSON helper that handles types for you. */
@:native("Sandbox.Json")
final extern class Json {
    /** Try to deserialize given source to given type. */
    static overload function Deserialize<T>(source:String):T;
    static overload function Deserialize(source:String, t:cs.system.Type):cs.system.Object;
    /** Deserialize a single object to a type */
    static overload function FromNode<T>(node:system.text.json.nodes.JsonNode):T;
    static overload function FromNode(node:system.text.json.nodes.JsonNode, type:cs.system.Type):cs.system.Object;
    /** Parse some Json to a JsonObject */
    static overload function ParseToJsonObject(json:String):system.text.json.nodes.JsonObject;
    static overload function ParseToJsonObject(reader:system.text.json.Utf8JsonReader):system.text.json.nodes.JsonObject;
    /** Serialize an object. */
    static function Serialize(source:cs.system.Object):String;
    /** Serialize a single object to a JsonNode */
    static overload function ToNode(obj:cs.system.Object):system.text.json.nodes.JsonNode;
    static overload function ToNode(obj:cs.system.Object, type:cs.system.Type):system.text.json.nodes.JsonNode;
    static overload function TryDeserialize<T>(source:String, obj:T):Bool;
    static overload function TryDeserialize(source:String, t:cs.system.Type, obj:cs.system.Object):Bool;
    /** Deep walk though an entire Json tree, optionally changing values of nodes. */
    static function WalkJsonTree(node:system.text.json.nodes.JsonNode, onValue:system.Func3<String,system.text.json.nodes.JsonValue,system.text.json.nodes.JsonNode>, onObject:system.Func3<String,system.text.json.nodes.JsonObject,system.text.json.nodes.JsonObject>):system.text.json.nodes.JsonNode;
}
