package sandbox.codearchive;

/** Represents a file to send to the compiler along with all the code. This is usually something that the generator turns into code, such as a Razor file. */
@:native("Sandbox.CodeArchive.AdditionalFile")
extern class AdditionalFile {
    /** Represents a file to send to the compiler along with all the code. This is usually something that the generator turns into code, such as a Razor file. */
    function new(Text:String, LocalPath:String):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Text(default,default):String;
    var LocalPath(default,default):String;
    function Deconstruct(Text:String, LocalPath:String):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.codearchive.AdditionalFile):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
