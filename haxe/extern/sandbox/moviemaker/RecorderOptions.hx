package sandbox.moviemaker;

@:native("Sandbox.MovieMaker.RecorderOptions")
extern class RecorderOptions {
    overload function new(SampleRate:Int):Void;
    @:protected overload function new(original:sandbox.moviemaker.RecorderOptions):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var SampleRate(default,default):Int;
    static var Default(default,never):sandbox.moviemaker.RecorderOptions;
    function Deconstruct(SampleRate:Int):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.moviemaker.RecorderOptions):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
