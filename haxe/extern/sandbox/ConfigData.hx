package sandbox;

/** Project configuration data is derived from this class */
@:native("Sandbox.ConfigData")
extern class ConfigData {
    var Guid(default,default):system.Guid;
    var Version(default,never):Int;
    function Deserialize(json:String):Void;
    /** Called after deserialization, and before serialization. A place to error check and make sure everything is fine. */
    @:protected function OnValidate():Void;
    function Serialize():system.text.json.nodes.JsonObject;
}
