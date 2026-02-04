package sandbox.generator;

@:native("Sandbox.Generator.ILHotloadProcessor")
final extern class ILHotloadProcessor {
    static function GetChanges(oldTree:microsoft.codeanalysis.SyntaxTree, newTree:microsoft.codeanalysis.SyntaxTree):String;
}
