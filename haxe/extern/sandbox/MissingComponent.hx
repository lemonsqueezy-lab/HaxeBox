package sandbox;

/** This is added when a component is missing. It will store the json data of the missing component, so we don't lose any data. */
@:native("Sandbox.MissingComponent")
extern class MissingComponent extends sandbox.Component {
    function new(jso:system.text.json.nodes.JsonObject):Void;
    /** Get the Json data that was deserialized */
    function GetJson():system.text.json.nodes.JsonObject;
}
