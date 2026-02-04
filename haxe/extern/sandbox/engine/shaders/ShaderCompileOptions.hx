package sandbox.engine.shaders;

/** Options used when compiling a shader */
@:native("Sandbox.Engine.Shaders.ShaderCompileOptions")
final extern class ShaderCompileOptions {
    var SingleThreaded(default,set):Bool;

    private inline function set_SingleThreaded(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.SingleThreaded = {1}", this, __value);
    }

    var ForceRecompile(default,set):Bool;

    private inline function set_ForceRecompile(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ForceRecompile = {1}", this, __value);
    }

    /** Write to console. Used when running from the command line. */
    var ConsoleOutput(default,set):Bool;

    private inline function set_ConsoleOutput(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ConsoleOutput = {1}", this, __value);
    }

}
