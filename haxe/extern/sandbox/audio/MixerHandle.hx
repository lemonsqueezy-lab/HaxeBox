package sandbox.audio;

/** A handle to a Mixer */
@:native("Sandbox.Audio.MixerHandle")
final extern class MixerHandle {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Id(default,set):system.Guid;

    private inline function set_Id(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.audio.MixerHandle):Bool;
    function Get(fallback:sandbox.audio.Mixer):sandbox.audio.Mixer;
    static function GetDropdownSelection():Array<cs.system.Object>;
    function GetHashCode():Int;
    function GetOrDefault():sandbox.audio.Mixer;
    static function JsonRead(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type):cs.system.Object;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
    function ToString():String;
}
