package sandbox.tasks;

@:native("Sandbox.Tasks.SyncTask")
final extern class SyncTask {
    var IsCompleted(default,never):Bool;
    function GetAwaiter():sandbox.tasks.SyncTask;
    function GetResult():Void;
    function OnCompleted(continuation:system.Action):Void;
}
