package sandbox.json;

/** Represents a JSON Pointer as defined in RFC 6901. */
@:native("Sandbox.Json.Pointer")
extern class Pointer {
    /** Initializes a new instance of the class with the specified string. */
    function new(value:String):Void;
    /** The reference tokens that make up the JSON Pointer. */
    var ReferenceTokens(default,never):system.collections.immutable.ImmutableArray<String>;
    var IsRoot(default,never):Bool;
    static var Root(default,never):sandbox.json.Pointer;
    /** Appends an integer index as a token to the JSON Pointer and returns a new . */
    overload function Append(index:Int):sandbox.json.Pointer;
    overload function Append(token:String):sandbox.json.Pointer;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.json.Pointer):Bool;
    function Evaluate(document:system.text.json.nodes.JsonNode):system.text.json.nodes.JsonNode;
    function GetHashCode():Int;
    /** Returns a new representing the parent of the current pointer. */
    function GetParent():sandbox.json.Pointer;
    function ToString():String;
}
