package sandbox.mounting;

/** The base class for all mounts. Your mount should implement the abstract methods from this class. */
@:native("Sandbox.Mounting.BaseGameMount")
extern class BaseGameMount {
    function new():Void;
    /** True if this source is installed on the system and can be mounted. */
    @:protected
    var IsInstalled(default,null):Bool;
    /** True if this is currently active and mounted */
    @:protected
    var IsMounted(default,null):Bool;
    /** A short, lowercase string that will be used to uniquely identify this asset source ie "rust" */
    var Ident(default,never):String;
    /** The display name of the game this mounts, ie "Rust" */
    var Title(default,never):String;
    /** Allows logging for this specific asset source */
    @:protected
    var Log(null,null):sandbox.diagnostics.Logger;
    /** All of the resources in this game */
    var Resources(default,never):system.collections.generic.IReadOnlyCollection<sandbox.mounting.ResourceLoader<Dynamic>>;
    var RootFolder(default,never):sandbox.mounting.ResourceFolder;
    /** Retrieves the resource loader associated with the specified path, if it exists. */
    function GetByPath(path:String):sandbox.mounting.ResourceLoader<Dynamic>;
    /** Called on startup, in parallel with other sources. Use this to check for the presence of the game on disk and set the IsInstalled property if it is. */
    @:protected function Initialize(context:sandbox.mounting.InitializeContext):Void;
    /** Try to mount. Should set Mounted to true if success. */
    @:protected function Mount(context:sandbox.mounting.MountContext):system.threading.tasks.Task;
    /** Unmount and re-mount the source. Used during development to update the files. */
    function RefreshInternal():system.threading.tasks.Task;
    /** Called on destroy, if you have any files open, now is the time to close them. */
    @:protected function Shutdown():Void;
}
