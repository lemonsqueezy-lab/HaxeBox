package sandbox.audio;

@:native("Sandbox.Audio.MixerSettings")
extern class MixerSettings extends sandbox.ConfigData {
    function new():Void;
    var Mixers(default,default):system.text.json.nodes.JsonObject;
}
