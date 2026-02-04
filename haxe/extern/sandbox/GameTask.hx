package sandbox;

/** A generic . */
@:native("Sandbox.GameTask")
final extern class GameTask {
    static var CompletedTask(default,never):system.threading.tasks.Task;
    static overload function Delay(ms:Int):system.threading.tasks.Task;
    static overload function Delay(ms:Int, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    static overload function DelayRealtime(ms:Int):system.threading.tasks.Task;
    static overload function DelayRealtime(ms:Int, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    static overload function DelayRealtimeSeconds(seconds:Single):system.threading.tasks.Task;
    static overload function DelayRealtimeSeconds(seconds:Single, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    static overload function DelaySeconds(seconds:Single):system.threading.tasks.Task;
    static overload function DelaySeconds(seconds:Single, ct:system.threading.CancellationToken):system.threading.tasks.Task;
    static function FromResult<T>(t:T):system.threading.tasks.Task1<T>;
    static overload function MainThread():sandbox.tasks.SyncTask;
    static overload function MainThread(cancellation:system.threading.CancellationToken):sandbox.tasks.SyncTask;
    static overload function RunInThreadAsync(action:system.Action):system.threading.tasks.Task;
    static overload function RunInThreadAsync(task:system.Func1<system.threading.tasks.Task>):system.threading.tasks.Task;
    static overload function RunInThreadAsync<T>(func:system.Func1<T>):system.threading.tasks.Task1<T>;
    static overload function RunInThreadAsync<T>(task:system.Func1<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<T>;
    static function WaitAll(tasks:Array<system.threading.tasks.Task>):Void;
    static function WaitAny(tasks:Array<system.threading.tasks.Task>):Void;
    static overload function WhenAll(tasks:Array<system.threading.tasks.Task>):system.threading.tasks.Task;
    static overload function WhenAll(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task>):system.threading.tasks.Task;
    static overload function WhenAll<T>(tasks:Array<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<Array<T>>;
    static overload function WhenAll<T>(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<Array<T>>;
    static overload function WhenAny(tasks:Array<system.threading.tasks.Task>):system.threading.tasks.Task;
    static overload function WhenAny(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task>):system.threading.tasks.Task;
    static overload function WhenAny<T>(tasks:Array<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<system.threading.tasks.Task1<T>>;
    static overload function WhenAny<T>(tasks:system.collections.generic.IEnumerable<system.threading.tasks.Task1<T>>):system.threading.tasks.Task1<system.threading.tasks.Task1<T>>;
    static overload function WorkerThread():sandbox.tasks.SyncTask;
    static overload function WorkerThread(cancellation:system.threading.CancellationToken):sandbox.tasks.SyncTask;
    static function Yield():system.threading.tasks.Task;
}
