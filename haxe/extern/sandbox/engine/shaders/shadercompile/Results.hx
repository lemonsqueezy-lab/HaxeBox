package sandbox.engine.shaders.shadercompile;

/** The results of a shader compile */
@:native("Sandbox.Engine.Shaders.ShaderCompile.Results")
extern class Results {
    function new():Void;
    /** True if the shader was compiled successfully. False indicates an error occurred. You can dig deeper into why in Programs. */
    var Success(default,default):Bool;
    /** If true then this compile was skipped because nothing changed */
    var Skipped(default,default):Bool;
    /** If successful, this contains the actual resource-encoded bytes of the shader compile. */
    var CompiledShader(default,default):Array<Int>;
    var Programs(default,default):system.collections.generic.List<sandbox.engine.shaders.shadercompile.results.Program>;
}
