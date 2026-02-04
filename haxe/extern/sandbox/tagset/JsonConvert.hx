package sandbox.tagset;

@:native("Sandbox.TagSet.JsonConvert")
extern class JsonConvert {
    function new():Void;
    var HandleNull(default,never):Bool;
    var Type(default,never):cs.system.Type;
    function Read(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type, options:system.text.json.JsonSerializerOptions):sandbox.TagSet;
    function Write(writer:system.text.json.Utf8JsonWriter, val:sandbox.TagSet, options:system.text.json.JsonSerializerOptions):Void;
}
