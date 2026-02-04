package sandbox.packagemanager;

/** Describes a package that is currently mounted. Mounted packages are shared between client, server and editor. We keep track of which host is using which package using Tags. */
@:native("Sandbox.PackageManager.ActivePackage")
extern class ActivePackage {
    function new():Void;
    var Package(default,never):sandbox.Package;
    var FileSystem(default,never):sandbox.BaseFileSystem;
    var PackageFileSystem(default,never):sandbox.PackageFileSystem;
    var AssemblyFileSystem(default,never):sandbox.BaseFileSystem;
    /** The project settings folder */
    var ProjectSettings(default,never):sandbox.BaseFileSystem;
    /** The project's localization folder */
    var Localization(default,never):sandbox.BaseFileSystem;
    var Tags(default,never):system.collections.generic.HashSet<String>;
    function AddContextTag(tag:String):Void;
    /** Called to unmount and remove this package from being active */
    function Delete():Void;
    function Lookup(reference:String):microsoft.codeanalysis.PortableExecutableReference;
    function RemoveContextTag(tag:String):Void;
}
