package sandbox;

/** Utility functions that revolve around the main thread */
@:native("Sandbox.MainThread")
final extern class MainThread {
    /** When running in another thread you can queue a method to run in the main thread. If you are on the main thread we will execute the method immediately and return. */
    static function Queue(method:system.Action):Void;
    /** Wait to execute on the main thread */
    static function Wait():sandbox.tasks.SyncTask;
}
