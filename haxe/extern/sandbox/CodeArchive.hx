package sandbox;

@:native("Sandbox.CodeArchive")
extern class CodeArchive {
    overload function new():Void;
    overload function new(data:Array<Int>):Void;
    /** The name of the compiler */
    var CompilerName(default,default):String;
    /** The compiler's configuration settings */
    var Configuration(default,default):sandbox.compiler.Configuration;
    /** The syntax trees that should be compiled */
    var SyntaxTrees(default,never):system.collections.generic.List<microsoft.codeanalysis.SyntaxTree>;
    /** Additional files that the compiler/generator needs. This is going to be .razor files. */
    var AdditionalFiles(default,never):system.collections.generic.List<sandbox.codearchive.AdditionalFile>;
    /** Converts the syntax tree paths from physical paths to project local paths */
    var FileMap(default,never):system.collections.generic.Dictionary<String,String>;
    /** References that this compiler/generator needs to compile the code */
    var References(default,never):system.collections.generic.HashSet<String>;
    /** The version of the code archive 1005 - Inital version 1006 - Razor updates. Add razor namespaces on older versions. 1007 - Razor changed to our own Microsoft.AspNetCore.Components assembly */
    var Version(default,default):haxe.Int64;
    /** Serialize to a byte array */
    function Serialize():Array<Int>;
}
