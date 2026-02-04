package sandbox;

@:native("Sandbox.SandboxMenuExtensions")
final extern class SandboxMenuExtensions {
    /** Open a modal for the specific package. This will open the correct modal */
    static function OpenModal(package:sandbox.Package):Void;
    /** Mark this package as a favourite */
    static function SetFavouriteAsync(package:sandbox.Package, state:Bool):system.threading.tasks.Task;
    /** Add your vote for this package */
    static function SetVoteAsync(package:sandbox.Package, up:Bool):system.threading.tasks.Task;
}
