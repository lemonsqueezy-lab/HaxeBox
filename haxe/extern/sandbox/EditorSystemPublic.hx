package sandbox;

@:native("Sandbox.EditorSystemPublic")
extern class EditorSystemPublic {
    function new():Void;
    var Scene(default,never):sandbox.Scene;
    var Camera(default,never):sandbox.CameraComponent;
    function ForEachAsync<T>(list:system.collections.generic.IEnumerable<T>, title:String, worker:system.Func3<T,system.threading.CancellationToken,system.threading.tasks.Task>, cancel:system.threading.CancellationToken, modal:Bool):system.threading.tasks.Task;
    /** Start a progress section */
    function ProgressSection(modal:Bool):editor.IProgressSection;
}
