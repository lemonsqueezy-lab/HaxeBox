package sandbox;

/** Given a folder of .cs files, this will produce (and load) an assembly */
@:native("Sandbox.Compiler")
final extern class Compiler {
    /** Each compiler must belong to a compile group */
    var Group(default,never):sandbox.CompileGroup;
    /** The output from the previous build */
    var Output(default,default):sandbox.CompilerOutput;
    /** Is this compiler currently building? */
    var IsBuilding(default,never):Bool;
    /** Returns true if this compiler is pending a build, or currently building. */
    var NeedsBuild(default,never):Bool;
    /** Name of the project this compiler was created for. This could be something like "base" or "org.ident". */
    var Name(default,never):String;
    /** During development we use absolute source paths so that debugging works better. In a packed/release build it's good to use relative paths instead, just to avoid exposing the builder's file system. */
    var UseAbsoluteSourcePaths(default,default):Bool;
    /** A list of warnings and errors created by the last build */
    var Diagnostics(default,never):Array<microsoft.codeanalysis.Diagnostic>;
    /** Generated assembly name, without an extension. This will be "package.{Name}". */
    var AssemblyName(default,never):String;
    /** Global namespaces */
    var GeneratedCode(default,default):system.text.StringBuilder;
    /** An aggregate of all the filesystem this compiler has */
    var FileSystem(default,never):sandbox.BaseFileSystem;
    /** Results for the assembly build. This can contain warnings or errors. */
    var BuildResult(default,never):microsoft.codeanalysis.emit.EmitResult;
    /** Accesses Output.Successful */
    var BuildSuccess(default,never):Bool;
    /** Add a reference to this compiler. This might be a system dll, or an assembly name from a fellow compiler. */
    function AddReference(referenceName:String):Void;
    /** Add an extra source path. Useful for situations where you want to combine multiple addons into one. */
    function AddSourcePath(fullPath:String):Void;
    function DependencyIndex(depth:Int):Int;
    function Dispose():Void;
    @:protected function Finalize():Void;
    function GetConfiguration():sandbox.compiler.Configuration;
    /** Returns true if contains the given reference assembly name. If is true, referenced compilers are searched too. */
    function HasReference(referenceName:String, deep:Bool):Bool;
    /** Recompile this as soon as is appropriate */
    function MarkForRecompile():Void;
    function NotifyFastHotload(fastHotloadedVersion:system.Version):Void;
    function SetConfiguration(newConfig:sandbox.compiler.Configuration):Void;
    /** Strips out disabled text trivia from the syntax tree. This is stuff like `#if false` blocks that are not compiled. */
    static function StripDisabledTextTrivia(tree:microsoft.codeanalysis.SyntaxTree):microsoft.codeanalysis.SyntaxTree;
    /** Fill this compiler from a code archive */
    function UpdateFromArchive(a:sandbox.CodeArchive):Void;
    /** Watch the filesystem for changes to our c# files, and trigger a recompile if they change. */
    function WatchForChanges():Void;
}
