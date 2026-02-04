package sandbox.utility;

/** Wrappers of the parallel class. */
@:native("Sandbox.Utility.Parallel")
final extern class Parallel {
    static function For(fromInclusive:Int, toExclusive:Int, body:system.Action1<Int>):Bool;
    static function ForAsync(fromInclusive:Int, toExclusive:Int, token:system.threading.CancellationToken, body:system.Func3<Int,system.threading.CancellationToken,system.threading.tasks.ValueTask>):system.threading.tasks.Task;
    static overload function ForEach<T>(source:system.collections.generic.IEnumerable<T>, body:system.Action1<T>):Bool;
    static overload function ForEach<T>(source:system.collections.generic.IEnumerable<T>, token:system.threading.CancellationToken, body:system.Action1<T>):Bool;
}
