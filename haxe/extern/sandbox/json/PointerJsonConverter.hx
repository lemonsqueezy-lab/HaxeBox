package sandbox.json;

/** Custom JSON converter for the Pointer class that serializes a Pointer as a string and deserializes a string back into a Pointer using the Parse method. */
@:native("Sandbox.Json.PointerJsonConverter")
extern class PointerJsonConverter {
    function new():Void;
    var HandleNull(default,never):Bool;
    var Type(default,never):cs.system.Type;
    function Read(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type, options:system.text.json.JsonSerializerOptions):sandbox.json.Pointer;
    function Write(writer:system.text.json.Utf8JsonWriter, value:sandbox.json.Pointer, options:system.text.json.JsonSerializerOptions):Void;
}
