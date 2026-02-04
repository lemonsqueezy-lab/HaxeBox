package sandbox.resources;

@:native("Sandbox.Resources.ResourceCompileContext")
extern class ResourceCompileContext {
    /** The absolute path to the resource on disk */
    var AbsolutePath(default,never):String;
    /** The path relative to the assets folder */
    var RelativePath(default,never):String;
    /** The resource version can be important */
    var ResourceVersion(default,default):Int;
    /** Get the streaming data to write to */
    var StreamingData(default,never):sandbox.resources.resourcecompilecontext.DataStream;
    /** Get the data to write to */
    var Data(default,never):sandbox.resources.resourcecompilecontext.DataStream;
    /** Add a reference that is needed to compile this resource, but isn't actually needed once compiled. */
    function AddCompileReference(path:String):Void;
    /** Add a reference. This means that the resource we're compiling depends on this resource. */
    function AddRuntimeReference(path:String):Void;
    /** Create a child resource */
    function CreateChild(absolutePath:String):sandbox.resources.resourcecompilecontext.Child;
    /** Read the source, either from in memory, or from disk */
    function ReadSource():Array<Int>;
    /** Read the source, either from in memory, or from disk */
    function ReadSourceAsJson():system.text.json.nodes.JsonObject;
    /** Read the source, either from in memory, or from disk */
    function ReadSourceAsString():String;
    /** Load the json and scan it for paths or any embedded resources */
    function ScanJson(json:String):String;
}
