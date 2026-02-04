package sandbox.audio;

@:native("Sandbox.Audio.MixerSettings")
extern class MixerSettings {
    function new():Void;
    var Version(default,never):Int;
    var Mixers(default,default):system.text.json.nodes.JsonObject;
    var Guid(default,default):system.Guid;
}
