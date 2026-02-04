package sandbox.actiongraphs;

/** Source location for action graphs that belong to a Hammer map. This is used for stack traces, and for knowing which map to save when editing a graph. */
@:native("Sandbox.ActionGraphs.MapSourceLocation")
final extern class MapSourceLocation {
    var MapPathName(default,never):String;
    var SerializationOptions(default,never):facepunch.actiongraphs.SerializationOptions;
    /** Gets a from a path name. */
    static function Get(mapPathName:String):sandbox.actiongraphs.MapSourceLocation;
    function ToString():String;
}
