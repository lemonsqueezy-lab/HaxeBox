package sandbox.engine.shaders.shadercompile.results;

/** The results of an individual shader program compile (PS, VS etc) */
@:native("Sandbox.Engine.Shaders.ShaderCompile.Results.Program")
extern class Program {
    function new():Void;
    /** The identifier for this program */
    var Name(default,default):String;
    /** How many combos had to be compiled for this program. This is Static * Dynamic. */
    var ComboCount(default,default):Int;
    /** The full pre-processed source for this shader */
    var Source(default,default):String;
    /** True if this was compiled successfully */
    var Success(default,default):Bool;
    /** Shader compile output, warnings and errors */
    var Output(default,default):system.collections.generic.List<String>;
}
