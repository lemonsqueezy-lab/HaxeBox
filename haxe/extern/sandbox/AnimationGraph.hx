package sandbox;

@:native("Sandbox.AnimationGraph")
final extern class AnimationGraph {
    var IsValid(default,never):Bool;
    /** Whether the animation graph is invalid, or has not yet loaded. */
    var IsError(default,never):Bool;
    /** Animation graph file name. */
    var Name(default,never):String;
    /** Number of parameters in this animgraph */
    var ParamCount(default,never):Int;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** True if this resource has been changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function Finalize():Void;
    /** Get parameter at given index */
    overload function GetParameter<T>(index:Int):sandbox.AnimParam<T>;
    overload function GetParameter<T>(name:String):sandbox.AnimParam<T>;
    /** Get name of parameter at given index */
    function GetParameterName(index:Int):String;
    /** Get value type of parameter at given index */
    overload function GetParameterType(index:Int):cs.system.Type;
    overload function GetParameterType(name:String):cs.system.Type;
    /** Load an animation graph from given file. */
    static function Load(filename:String):sandbox.AnimationGraph;
    function TryGetParameterIndex(name:String, index:Int):Bool;
}
