package sandbox.resources.resourcegenerator;

@:native("Sandbox.Resources.ResourceGenerator.Options")
final extern class Options {
    /** True if we're compiling this resource to write to disk */
    var ForDisk(default,set):Bool;

    private inline function set_ForDisk(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ForDisk = {1}", this, __value);
    }

    /** Will be set to the compiler that is currently compiling this resource. Or null, if we're generating in another method. */
    var Compiler(default,set):sandbox.resources.ResourceCompiler;

    private inline function set_Compiler(value:sandbox.resources.ResourceCompiler):sandbox.resources.ResourceCompiler {
        var __value:sandbox.resources.ResourceCompiler = cast value;
        return untyped __cs__("{0}.Compiler = {1}", this, __value);
    }

    static var Default(default,never):sandbox.resources.resourcegenerator.Options;
}
