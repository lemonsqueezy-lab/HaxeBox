package sandbox.speech.synthesizer;

@:native("Sandbox.Speech.Synthesizer.InstalledVoice")
final extern class InstalledVoice {
    function new(Name:String, Gender:String, Age:String):Void;
    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Gender(default,set):String;

    private inline function set_Gender(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Gender = {1}", this, __value);
    }

    var Age(default,set):String;

    private inline function set_Age(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Age = {1}", this, __value);
    }

    function Deconstruct(Name:String, Gender:String, Age:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.speech.synthesizer.InstalledVoice):Bool;
    function GetHashCode():Int;
    function ToString():String;
}
