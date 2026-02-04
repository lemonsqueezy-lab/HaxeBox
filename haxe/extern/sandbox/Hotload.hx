package sandbox;

/** Provides methods for replacing loaded assemblies with new versions at runtime. */
@:native("Sandbox.Hotload")
extern class Hotload {
    /** Default constructor that includes Sandbox.Hotload.dll and Mono.Cecil.dll to the ignored assembly list. */
    function new(addDefaultUpgraders:Bool, logger:sandbox.diagnostics.Logger):Void;
    /** If true, the static field or watched object that instances are found under will be stored in . Defaults to false. */
    var TraceRoots(default,default):Bool;
    /** If true, keep track of the path to instances to include in logging. Defaults to false. */
    var TracePaths(default,default):Bool;
    /** If true, record per-type timing information. */
    var IncludeTypeTimings(default,default):Bool;
    /** If true, record instance processor timing information. */
    var IncludeProcessorTimings(default,default):Bool;
    /** Optional resolver required for features like setting default values of newly-added fields. */
    var AssemblyResolver(default,default):mono.cecil.IAssemblyResolver;
    /** Optional formatter when pretty-printing assembly names in logs. */
    static var AssemblyNameFormatter(default,default):system.Func2<system.reflection.AssemblyName,String>;
    /** Currently watched assemblies, to enumerate the static fields of. This will contain assemblies added with , along with (after a hotload) the most recent replacing assemblies passed to . */
    var WatchedAssemblies(default,never):system.collections.generic.IEnumerable<system.reflection.Assembly>;
    /** Currently watched object instances. Use to add to this set. */
    var WatchedInstances(default,never):system.collections.generic.IEnumerable<cs.system.Object>;
    overload function AddUpgrader<TUpgrader>():Void;
    overload function AddUpgrader(upgrader:sandbox.hotload.IInstanceUpgrader):Void;
    function AddUpgraders(asm:system.reflection.Assembly):Void;
    function GetOutgoingAssemblies():Array<system.reflection.Assembly>;
    /** Returns the queue of assemblies that will be swapped when is called. These are added using the method. */
    function GetQueuedAssemblyReplacements():system.collections.generic.IReadOnlyDictionary<system.reflection.Assembly,system.reflection.Assembly>;
    overload function GetUpgrader<TUpgrader>():TUpgrader;
    overload function GetUpgrader(upgraderType:cs.system.Type):sandbox.hotload.IInstanceUpgrader;
    /** Any fields declared on types defined in the given assembly will be skipped during future reference updates. */
    overload function IgnoreAssembly<T>():Void;
    overload function IgnoreAssembly(asmName:String):Void;
    overload function IgnoreAssembly(toIgnore:system.reflection.Assembly):Void;
    function IsAssemblyIgnored(asm:system.reflection.Assembly):Bool;
    /** To be called when one assembly is being replaced by another, is loaded for the first time, or unloaded for the last time. This will add to be watched (if not null), and remove from being watched (if not null). If both assemblies aren't null, they will be added to be swapped when is next called, and true is returned. */
    function ReplacingAssembly(oldAssembly:system.reflection.Assembly, newAssembly:system.reflection.Assembly):Bool;
    overload function TryGetUpgrader<TUpgrader>(upgrader:TUpgrader):Bool;
    overload function TryGetUpgrader(upgraderType:cs.system.Type, upgrader:sandbox.hotload.IInstanceUpgrader):Bool;
    /** Stop watching static fields of types defined in the given assembly. */
    function UnwatchAssembly(a:system.reflection.Assembly):Void;
    function UnwatchInstance<T>(obj:T):Void;
    /** Cycle though all types in all watched assemblies. Find statics, iterate over all their fields recursively. Replace any instances of classes that are defined in the assemblies added using ReplacingAssembly */
    function UpdateReferences():sandbox.HotloadResult;
    /** Look for instances to replace in the static fields of types defined in the defining assembly of . */
    overload function WatchAssembly<T>():Void;
    overload function WatchAssembly(assemblyName:String, filter:system.Func2<cs.system.Type,Bool>):Void;
    overload function WatchAssembly(a:system.reflection.Assembly, filter:system.Func2<cs.system.Type,Bool>):Void;
    function WatchInstance<T>(obj:T):Void;
}
