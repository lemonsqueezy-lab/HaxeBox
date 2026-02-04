package sandbox;

/** Allows writing JsonConverter in a more compact way, without having to pre-register them. */
@:native("Sandbox.IJsonConvert")
extern class IJsonConvert {
    static function JsonRead(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type):cs.system.Object;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
}
