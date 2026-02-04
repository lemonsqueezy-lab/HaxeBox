package sandbox.tasks.synccontext;

@:native("Sandbox.Tasks.SyncContext.FrameStage")
final extern class FrameStage {
    static var Update(default,default):sandbox.tasks.synccontext.framestage.FrameStageAwaiter;
    static var FixedUpdate(default,default):sandbox.tasks.synccontext.framestage.FrameStageAwaiter;
    static var PreRender(default,default):sandbox.tasks.synccontext.framestage.FrameStageAwaiter;
}
