package sandbox.audio;

/** A handle to a DspPreset */
@:native("Sandbox.Audio.DspPresetHandle")
final extern class DspPresetHandle {
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.audio.DspPresetHandle):Bool;
    static function GetDropdownSelection():Array<cs.system.Object>;
    function GetHashCode():Int;
    static function JsonRead(reader:system.text.json.Utf8JsonReader, typeToConvert:cs.system.Type):cs.system.Object;
    static function JsonWrite(value:cs.system.Object, writer:system.text.json.Utf8JsonWriter):Void;
    function ToString():String;
}
