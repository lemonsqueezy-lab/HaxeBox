package sandbox.generator;

@:native("Sandbox.Generator.RoslynExtensions")
final extern class RoslynExtensions {
    static function AddStatementToFront(node:microsoft.codeanalysis.csharp.syntax.MethodDeclarationSyntax, statement:String):microsoft.codeanalysis.csharp.syntax.MethodDeclarationSyntax;
    static overload function DerivesFrom(symbol:microsoft.codeanalysis.ITypeSymbol, search:microsoft.codeanalysis.ITypeSymbol):Bool;
    static overload function DerivesFrom(symbol:microsoft.codeanalysis.ITypeSymbol, name:String, exact:Bool):Bool;
    static function DerivesFromOrImplementsAnyConstructionOf(type:microsoft.codeanalysis.INamedTypeSymbol, parentType:microsoft.codeanalysis.INamedTypeSymbol):Bool;
    static function FullName(type:microsoft.codeanalysis.ITypeSymbol):String;
    static function GetArgument(list:microsoft.codeanalysis.csharp.syntax.AttributeArgumentListSyntax, position:Int, name:String):microsoft.codeanalysis.csharp.syntax.AttributeArgumentSyntax;
    static overload function GetArgumentValue(ad:microsoft.codeanalysis.AttributeData, position:Int, name:String, defaultValue:String):String;
    static overload function GetArgumentValue(ad:microsoft.codeanalysis.csharp.syntax.AttributeSyntax, position:Int, name:String, defaultValue:String):String;
    static overload function GetAttribute(symbol:microsoft.codeanalysis.IMethodSymbol, name:String):microsoft.codeanalysis.AttributeData;
    static overload function GetAttribute(symbol:microsoft.codeanalysis.INamedTypeSymbol, name:String):microsoft.codeanalysis.AttributeData;
    static overload function GetAttribute(symbol:microsoft.codeanalysis.ISymbol, name:String):microsoft.codeanalysis.AttributeData;
    static overload function GetAttribute(symbol:microsoft.codeanalysis.csharp.syntax.MemberDeclarationSyntax, name:String):microsoft.codeanalysis.csharp.syntax.AttributeSyntax;
    static overload function GetAttribute(symbol:microsoft.codeanalysis.IPropertySymbol, parentName:String, name:String):microsoft.codeanalysis.AttributeData;
    static function GetElementType(symbol:microsoft.codeanalysis.ITypeSymbol):microsoft.codeanalysis.ITypeSymbol;
    static function GetFullMetadataName(s:microsoft.codeanalysis.ISymbol):String;
    static function GetType(model:microsoft.codeanalysis.SemanticModel, name:String):microsoft.codeanalysis.INamedTypeSymbol;
    static overload function HasAttribute(symbol:microsoft.codeanalysis.IMethodSymbol, name:String):Bool;
    static overload function HasAttribute(symbol:microsoft.codeanalysis.IPropertySymbol, name:String):Bool;
    static overload function HasAttribute(symbol:microsoft.codeanalysis.csharp.syntax.MemberDeclarationSyntax, name:String):Bool;
    static function Implements(symbol:microsoft.codeanalysis.ITypeSymbol, name:String, exact:Bool):Bool;
    static function ImplementsGetOrSet(prop:microsoft.codeanalysis.csharp.syntax.PropertyDeclarationSyntax):Bool;
    static function IsAutoProperty(propertySymbol:microsoft.codeanalysis.IPropertySymbol):Bool;
    static function PrintableWithPeriod(containingNamespace:microsoft.codeanalysis.INamespaceSymbol):String;
    static function ToDisplayString(accessibility:microsoft.codeanalysis.Accessibility):String;
}
