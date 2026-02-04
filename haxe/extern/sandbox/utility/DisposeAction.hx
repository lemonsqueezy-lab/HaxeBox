package sandbox.utility;

/** A simple IDisposable that invokes an action when disposed. Useful for creating using-blocks with cleanup logic. */
@:native("Sandbox.Utility.DisposeAction")
final extern class DisposeAction {
    /** Creates a new DisposeAction that will invoke the specified action on disposal. */
    function new(action:system.Action):Void;
    /** Factory method to create a DisposeAction as an IDisposable. */
    static function Create(action:system.Action):system.IDisposable;
    /** Invokes the action specified in the constructor. */
    function Dispose():Void;
}
