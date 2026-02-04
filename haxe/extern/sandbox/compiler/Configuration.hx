package sandbox.compiler;

@:native("Sandbox.Compiler.Configuration")
final extern class Configuration {
    function new():Void;
    var RootNamespace(default,set):String;

    private inline function set_RootNamespace(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.RootNamespace = {1}", this, __value);
    }

    var DefineConstants(default,set):String;

    private inline function set_DefineConstants(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.DefineConstants = {1}", this, __value);
    }

    var NoWarn(default,set):String;

    private inline function set_NoWarn(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.NoWarn = {1}", this, __value);
    }

    var WarningsAsErrors(default,set):String;

    private inline function set_WarningsAsErrors(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.WarningsAsErrors = {1}", this, __value);
    }

    var TreatWarningsAsErrors(default,set):Bool;

    private inline function set_TreatWarningsAsErrors(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.TreatWarningsAsErrors = {1}", this, __value);
    }

    var Nullables(default,set):Bool;

    private inline function set_Nullables(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Nullables = {1}", this, __value);
    }

    /** If true, we will be using the whitelist system. If false then this package won't be "sandboxed", so won't be able to be published on the platform. */
    var Whitelist(default,set):Bool;

    private inline function set_Whitelist(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Whitelist = {1}", this, __value);
    }

    /** If true, we'll compile with /unsafe. This means that the package won't be able to be published on the platform. */
    var Unsafe(default,set):Bool;

    private inline function set_Unsafe(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Unsafe = {1}", this, __value);
    }

    /** The current release mode. This only matters during local development. Published games are always built in release mode, where optimizations are enabled and debugging is limited (breakpoints, sequence points, and locals may be unavailable). */
    var ReleaseMode(default,set):sandbox.compiler.ReleaseMode;

    private inline function set_ReleaseMode(value:sandbox.compiler.ReleaseMode):sandbox.compiler.ReleaseMode {
        var __value:sandbox.compiler.ReleaseMode = cast value;
        return untyped __cs__("{0}.ReleaseMode = {1}", this, __value);
    }

    /** References to non-package assemblies, by assembly name. */
    var AssemblyReferences(default,set):system.collections.generic.List<String>;

    private inline function set_AssemblyReferences(value:system.collections.generic.List<String>):system.collections.generic.List<String> {
        var __value:system.collections.generic.List<String> = cast value;
        return untyped __cs__("{0}.AssemblyReferences = {1}", this, __value);
    }

    /** Maps file patterns to preprocessor directives they should be wrapped in */
    var ReplacementDirectives(default,set):system.collections.generic.Dictionary<String,String>;

    private inline function set_ReplacementDirectives(value:system.collections.generic.Dictionary<String,String>):system.collections.generic.Dictionary<String,String> {
        var __value:system.collections.generic.Dictionary<String,String> = cast value;
        return untyped __cs__("{0}.ReplacementDirectives = {1}", this, __value);
    }

    /** Folders to ignore when walking the tree */
    var IgnoreFolders(default,set):system.collections.generic.HashSet<String>;

    private inline function set_IgnoreFolders(value:system.collections.generic.HashSet<String>):system.collections.generic.HashSet<String> {
        var __value:system.collections.generic.HashSet<String> = cast value;
        return untyped __cs__("{0}.IgnoreFolders = {1}", this, __value);
    }

    /** Each unique element of */
    var DistinctAssemblyReferences(default,never):system.collections.generic.IReadOnlySet<String>;
    function Clean():Void;
    /** Returns the CSharpParseOptions for this configuration, which includes the preprocessor symbols defined in . */
    function GetParseOptions():microsoft.codeanalysis.csharp.CSharpParseOptions;
    /** Fetches the preprocessor symbols, which might've changed based on criteria */
    function GetPreprocessorSymbols():system.collections.generic.HashSet<String>;
}
