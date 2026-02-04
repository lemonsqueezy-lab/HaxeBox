package sandbox.generator.description;

@:native("Sandbox.Generator.Description.MemberDocumentation")
extern class MemberDocumentation {
    var Summary(default,never):String;
    var Returns(default,never):String;
    var Parameters(default,never):system.collections.generic.IReadOnlyDictionary<String,String>;
    static var Empty(default,never):sandbox.generator.description.MemberDocumentation;
    static function FromSymbol(symbol:microsoft.codeanalysis.ISymbol, master:sandbox.generator.Worker):sandbox.generator.description.MemberDocumentation;
    static function Parse(xml:String, master:sandbox.generator.Worker):sandbox.generator.description.MemberDocumentation;
}
