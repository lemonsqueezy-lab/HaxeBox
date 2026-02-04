package sandbox.generator;

@:native("Sandbox.Generator.SourceGenerator")
extern class SourceGenerator {
    function new():Void;
    function Initialize(context:microsoft.codeanalysis.IncrementalGeneratorInitializationContext):Void;
}
