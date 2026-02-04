package sandbox.actiongraphs;

/** Source location for action graphs that belong to a . These can include scenes and prefabs, or custom resources. This is used for stack traces, and for knowing which asset to save when editing a graph. */
@:native("Sandbox.ActionGraphs.GameResourceSourceLocation")
extern class GameResourceSourceLocation {
    /** Source location for action graphs that belong to a . These can include scenes and prefabs, or custom resources. This is used for stack traces, and for knowing which asset to save when editing a graph. */
    function new(Resource:sandbox.GameResource):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    /** Resource that contains action graphs. */
    var Resource(default,default):sandbox.GameResource;
    function Deconstruct(Resource:sandbox.GameResource):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.actiongraphs.GameResourceSourceLocation):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}
