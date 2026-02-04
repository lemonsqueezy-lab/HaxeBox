package sandbox;

@:native("Sandbox.CompileGroup")
extern class CompileGroup {
    function new(name:String):Void;
    /** Build notifications start of suppressed until after startup proper. That way we don't get 4 build notification windows popping up on startup. */
    static var SuppressBuildNotifications(default,default):Bool;
    /** The compilers within the group */
    var Compilers(default,never):system.collections.generic.IEnumerable<sandbox.Compiler>;
    /** The name of this compile group, for debugging/display purposes */
    var Name(default,default):String;
    /** Returns true if we have compiles pending */
    var NeedsBuild(default,never):Bool;
    /** Returns true if we are currently in the process of building */
    var IsBuilding(default,never):Bool;
    /** True if we want to print errors in the console when compiling */
    var PrintErrorsInConsole(default,default):Bool;
    /** True if we want to use fast hotloading with this compile group */
    var AllowFastHotload(default,default):Bool;
    /** Returns true if build was successful */
    var BuildResult(default,never):sandbox.compilegroup.Results;
    /** Called when a compiling starts */
    var OnCompileStarted(default,default):system.Action;
    /** Called when a compiling ends */
    var OnCompileFinished(default,default):system.Action;
    /** Called when a compile completes successfully. Can access the result from BuildResult. */
    var OnCompileSuccess(default,default):system.Action;
    /** Allows providing an external way to find references */
    var ReferenceProvider(default,default):sandbox.ICompileReferenceProvider;
    /** AccessControl instance to use when verifying whitelist. Must be set to enable compile-time access control. */
    var AccessControl(default,default):sandbox.AccessControl;
    /** Build the compilers */
    function BuildAsync():system.threading.tasks.Task1<Bool>;
    /** Create a new compiler in this group. */
    function CreateCompiler(name:String, path:String, settings:sandbox.compiler.Configuration):sandbox.Compiler;
    /** Shut everything down */
    function Dispose():Void;
    function GetOrCreateCompiler(name:String):sandbox.Compiler;
    /** Reset the compile group. Clear errors and outputs. */
    function Reset():Void;
    function WaitForCompile(token:system.threading.CancellationToken):system.threading.tasks.Task;
}
