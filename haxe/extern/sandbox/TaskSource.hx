package sandbox;

/** Provides a way for us to cancel tasks after common async shit is executed. */
@:native("Sandbox.TaskSource")
final extern class TaskSource {
    var IsValid(default,never):Bool;
    var CompletedTask(default,never):system.threading.tasks.Task;
    static function Create(token:system.threading.CancellationToken):sandbox.TaskSource;
    /** Create a token source, which will also be cancelled when sessions end */
    static function CreateLinkedTokenSource():system.threading.CancellationTokenSource;
    /** A task that does nothing for given amount of time in milliseconds. */
    overload function Delay(ms:Int):system.threading.tasks.Task;
    overload function Delay(ms:Int, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    overload function DelayRealtime(ms:Int):system.threading.tasks.Task;
    overload function DelayRealtime(ms:Int, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    overload function DelayRealtimeSeconds(seconds:Single):system.threading.tasks.Task;
    overload function DelayRealtimeSeconds(seconds:Single, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    /** A task that does nothing for given amount of time in seconds. */
    overload function DelaySeconds(seconds:Single):system.threading.tasks.Task;
    overload function DelaySeconds(seconds:Single, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Wait until the next fixed update */
    function FixedUpdate():system.threading.tasks.Task;
    /** Wait until the start of the next frame */
    function Frame():system.threading.tasks.Task;
    /** Wait until the end of the frame */
    function FrameEnd():system.threading.tasks.Task;
    function FromCanceled(token:system.threading.CancellationToken):system.threading.tasks.Task;
    function FromException(e:system.Exception):system.threading.tasks.Task;
    function FromResult<T>(t:T):system.threading.tasks.Task1<T>;
    /** Continues on the main thread. */
    function MainThread():sandbox.tasks.SyncTask;
    overload function RunInThreadAsync(action:system.Action):system.threading.tasks.Task;
    overload function RunInThreadAsync(task:system.Func1<system.threading.tasks.Task>):system.threading.tasks.Task;
    overload function RunInThreadAsync<T>(func:system.Func1<T>):system.threading.tasks.Task1<T>;
    overload function RunInThreadAsync<T>(task:system.Func1<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<T>;
    function WaitAll(tasks:Array<system.threading.tasks.Task>):Void;
    function WaitAny(tasks:Array<system.threading.tasks.Task>):Void;
    overload function WhenAll(tasks:Array<system.threading.tasks.Task>):system.threading.tasks.Task;
    overload function WhenAll(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task>):system.threading.tasks.Task;
    overload function WhenAll<T>(tasks:Array<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<Array<T>>;
    overload function WhenAll<T>(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<Array<T>>;
    overload function WhenAny(tasks:Array<system.threading.tasks.Task>):system.threading.tasks.Task;
    overload function WhenAny(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task>):system.threading.tasks.Task;
    overload function WhenAny<T>(tasks:Array<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<system.threading.tasks.Task1<T>>;
    overload function WhenAny<T>(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<system.threading.tasks.Task1<T>>;
    /** Continues on a worker thread. */
    function WorkerThread():sandbox.tasks.SyncTask;
    function Yield():system.threading.tasks.Task;
}
