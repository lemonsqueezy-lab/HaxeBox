package sandbox.tasks.synccontext.framestage;

@:native("Sandbox.Tasks.SyncContext.FrameStage.FrameStageAwaiter")
extern class FrameStageAwaiter {
    function new():Void;
    var Value(default,never):system.UInt64;
    var Queue(default,default):system.Action;
    function Await():system.threading.tasks.Task;
    function Trigger():Void;
}
