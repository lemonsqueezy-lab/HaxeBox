package sandbox.generator;

@:native("Sandbox.Generator.Processor")
extern class Processor {
    function new():Void;
    var AddonName(default,default):String;
    var AddonFileMap(default,default):system.collections.generic.Dictionary<String,String>;
    var Compilation(default,default):microsoft.codeanalysis.csharp.CSharpCompilation;
    var LastSuccessfulCompilation(default,default):microsoft.codeanalysis.csharp.CSharpCompilation;
    var BeforeILHotloadProcessingTrees(default,default):system.collections.immutable.ImmutableArray<microsoft.codeanalysis.SyntaxTree>;
    var Exception(default,never):system.Exception;
    var Context(default,default):Null<microsoft.codeanalysis.SourceProductionContext>;
    var ILHotloadSupported(default,default):Bool;
    var PackageAssetResolver(default,default):system.Func2<String,String>;
    var Diagnostics(default,default):system.collections.generic.List<microsoft.codeanalysis.Diagnostic>;
    static var DefaultPackageAssetResolver(default,default):system.Func2<String,String>;
    static final CompilerExtraPath:String;
    function AddTrees(trees:system.collections.generic.IEnumerable<microsoft.codeanalysis.SyntaxTree>):Void;
    function Run(compilation:microsoft.codeanalysis.csharp.CSharpCompilation, lastSuccessfulCompilation:microsoft.codeanalysis.csharp.CSharpCompilation, lastBeforeIlHotloadProcessingTrees:system.collections.immutable.ImmutableArray<microsoft.codeanalysis.SyntaxTree>):Void;
}
