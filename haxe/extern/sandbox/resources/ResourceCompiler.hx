package sandbox.resources;

/** Takes the "source" of a resource and creates a compiled version. The compiled version can create a number of child resources and store binary data. */
@:native("Sandbox.Resources.ResourceCompiler")
extern class ResourceCompiler {
    var Context(default,never):sandbox.resources.ResourceCompileContext;
    @:protected function Compile():system.threading.tasks.Task1<Bool>;
    @:protected function CompileEmbedded(json:sandbox.resources.EmbeddedResource):Bool;
    @:protected function CompileEmbeddedResource<T>(embed:sandbox.resources.EmbeddedResource, subfolder:String, extension:String, fs:sandbox.BaseFileSystem):Bool;
    /** Create a deterministic path for a generated resource based on the embedded resource data. */
    @:protected function CreateGeneratedResourcePath<T>(embed:sandbox.resources.EmbeddedResource, subfolder:String, extension:String):String;
    @:protected function TryParseEmbeddedResource(resource:Null<sandbox.resources.EmbeddedResource>):Bool;
    /** Writes resource to a JSON file, using the ResourceGenerator to create the resource. */
    @:protected function WriteToJson<T>():system.threading.tasks.Task1<Bool>;
}
