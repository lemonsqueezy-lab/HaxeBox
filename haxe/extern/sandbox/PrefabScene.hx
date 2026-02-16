package sandbox;

@:native("Sandbox.PrefabScene")
extern class PrefabScene extends sandbox.Scene {
    /** A list of variables and their targets for this prefab scene */
    var Variables(default,never):sandbox.prefabscene.VariableCollection;
    function Deserialize(node:system.text.json.nodes.JsonObject, options:sandbox.gameobject.DeserializeOptions):Void;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
    function Load(resource:sandbox.GameResource):Bool;
    function Serialize(options:sandbox.gameobject.SerializeOptions):system.text.json.nodes.JsonObject;
    function ToPrefabFile():sandbox.PrefabFile;
}
