package;

@:native("GameMount")
extern class GameMount {
    function new():Void;
    var Ident(default,never):String;
    var Title(default,never):String;
    /** True if this source is installed on the system and can be mounted. */
    @:protected
    var IsInstalled(default,null):Bool;
    /** True if this is currently active and mounted */
    @:protected
    var IsMounted(default,null):Bool;
    /** Allows logging for this specific asset source */
    @:protected
    var Log(null,null):sandbox.diagnostics.Logger;
    /** All of the resources in this game */
    var Resources(default,never):system.collections.generic.IReadOnlyCollection<sandbox.mounting.ResourceLoader<Dynamic>>;
    var RootFolder(default,never):sandbox.mounting.ResourceFolder;
    @:protected function Initialize(context:sandbox.mounting.InitializeContext):Void;
    @:protected function Mount(context:sandbox.mounting.MountContext):system.threading.tasks.Task;
}
