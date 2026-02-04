package sandbox.packageloader;

/** Holds a list of assemblies with the intention of enrolling them into services like TypeLibrary, Event. Handles deduplication and switching due to hotloading etc.. */
@:native("Sandbox.PackageLoader.Enroller")
extern class Enroller {
    var Name(default,never):String;
    var OnAssemblyAdded(default,default):system.Action1<sandbox.LoadedAssembly>;
    var OnAssemblyRemoved(default,default):system.Action1<sandbox.LoadedAssembly>;
    var OnAssemblyFastHotload(default,default):system.Action1<sandbox.LoadedAssembly>;
    function Dispose():Void;
    /** Get all of the loaded assemblies. This is only to be used when sending assemblies to children. */
    function GetLoadedAssemblies():Array<sandbox.LoadedAssembly>;
    function LoadAssemblyFromStream(name:String, stream:system.io.Stream):Bool;
    function LoadPackage(packageName:String, loadAssemblies:Bool):Bool;
}
