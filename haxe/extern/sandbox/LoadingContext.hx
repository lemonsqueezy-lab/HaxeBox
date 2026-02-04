package sandbox;

@:native("Sandbox.LoadingContext")
extern class LoadingContext {
    function new():Void;
    /** The title of this loading task */
    var Title(default,default):String;
    /** True if the task has completed */
    var IsCompleted(default,never):Bool;
}
