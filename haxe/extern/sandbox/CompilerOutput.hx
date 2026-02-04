package sandbox;

@:native("Sandbox.CompilerOutput")
extern class CompilerOutput {
    function new(compiler:sandbox.Compiler):Void;
    /** True if the build succeeded */
    var Successful(default,never):Bool;
    /** The compiler that has produced this build */
    var Compiler(default,never):sandbox.Compiler;
    /** The version of the assembly */
    var Version(default,default):system.Version;
    /** The [assembly].dll contents for this build */
    var AssemblyData(default,never):Array<Int>;
    /** A code archive created during the compile */
    var Archive(default,never):sandbox.CodeArchive;
    /** The [assembly].xml contents for this build */
    var XmlDocumentation(default,never):String;
    /** A list of diagnostics caused by the previous build */
    var Diagnostics(default,never):system.collections.generic.List<microsoft.codeanalysis.Diagnostic>;
    /** If an exception happened during the build, it'll be available here */
    var Exception(default,never):system.Exception;
}
