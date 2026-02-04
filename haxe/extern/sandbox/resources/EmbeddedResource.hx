package sandbox.resources;

/** A JSON definition of an embedded resource. This is a resource that can be either standalone (in a .vtex file) or embedded in a GameResource's Json data. When it's detected in a GameResource we will create the named compiler and create the resource. When compiling the GameResource this can optionally create a compiled version of the resource on disk. When we compile a regular resource that contains this $compiler structure, it operates like any other compile, except it's totally managed by c# instead of resourcecompiler. */
@:native("Sandbox.Resources.EmbeddedResource")
final extern class EmbeddedResource {
    /** The name of the ResourceCompiler to use */
    var ResourceCompiler(default,set):String;

    private inline function set_ResourceCompiler(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ResourceCompiler = {1}", this, __value);
    }

    /** The name of the ResourceGenerator that created this resource. This is basically a sub-compiler. */
    var ResourceGenerator(default,set):String;

    private inline function set_ResourceGenerator(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ResourceGenerator = {1}", this, __value);
    }

    /** Sometimes we'll want to embed a child class of a resource */
    var TypeName(default,set):String;

    private inline function set_TypeName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.TypeName = {1}", this, __value);
    }

    /** Data that is serialized/deserialized from the ResourceGenerator */
    var Data(default,set):system.text.json.nodes.JsonObject;

    private inline function set_Data(value:system.text.json.nodes.JsonObject):system.text.json.nodes.JsonObject {
        var __value:system.text.json.nodes.JsonObject = cast value;
        return untyped __cs__("{0}.Data = {1}", this, __value);
    }

    /** If this resource has been compiled to disk then this is the path to that resource. This avoids the need to generate this resource again. */
    var CompiledPath(default,set):String;

    private inline function set_CompiledPath(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.CompiledPath = {1}", this, __value);
    }

}
