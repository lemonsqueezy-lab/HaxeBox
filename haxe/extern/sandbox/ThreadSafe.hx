package sandbox;

/** Provides utilities for working with threads, particularly for identifying and asserting code is running on the main thread. */
@:native("Sandbox.ThreadSafe")
final extern class ThreadSafe {
    /** Gets the current thread's managed thread ID. */
    static var CurrentThreadId(default,never):Int;
    /** Gets the current thread's name, or null if unnamed. */
    static var CurrentThreadName(default,never):String;
    /** Returns true if currently executing on the main thread. */
    static var IsMainThread(default,never):Bool;
    /** Throws an exception if not called from the main thread. Useful for enforcing thread safety on main-thread-only APIs. */
    static function AssertIsMainThread(memberName:String):Void;
    /** Throws an exception if called from the main thread. Useful for enforcing that blocking operations don't run on the main thread. */
    static function AssertIsNotMainThread():Void;
}
