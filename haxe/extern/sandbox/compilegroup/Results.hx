package sandbox.compilegroup;

@:native("Sandbox.CompileGroup.Results")
final extern class Results {
    var Success(default,never):Bool;
    var Failed(default,set):Bool;

    private inline function set_Failed(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Failed = {1}", this, __value);
    }

    var Diagnostics(default,set):system.collections.generic.List<microsoft.codeanalysis.Diagnostic>;

    private inline function set_Diagnostics(value:system.collections.generic.List<microsoft.codeanalysis.Diagnostic>):system.collections.generic.List<microsoft.codeanalysis.Diagnostic> {
        var __value:system.collections.generic.List<microsoft.codeanalysis.Diagnostic> = cast value;
        return untyped __cs__("{0}.Diagnostics = {1}", this, __value);
    }

    var Output(default,set):system.collections.generic.List<sandbox.CompilerOutput>;

    private inline function set_Output(value:system.collections.generic.List<sandbox.CompilerOutput>):system.collections.generic.List<sandbox.CompilerOutput> {
        var __value:system.collections.generic.List<sandbox.CompilerOutput> = cast value;
        return untyped __cs__("{0}.Output = {1}", this, __value);
    }

    function BuildDiagnosticsString(severity:microsoft.codeanalysis.DiagnosticSeverity):String;
}
