package sandbox;

/** Objects that need to be deserialized into can implement this interface which allows them to be populated from a JSON object. */
@:native("Sandbox.IJsonPopulator")
extern class IJsonPopulator {
    function Deserialize(node:system.text.json.nodes.JsonNode):Void;
    function Serialize():system.text.json.nodes.JsonNode;
}
