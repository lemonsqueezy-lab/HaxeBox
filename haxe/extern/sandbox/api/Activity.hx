package sandbox.api;

@:native("Sandbox.Api.Activity")
final extern class Activity {
    static var IsSessionActive(default,never):Bool;
    static var SessionSeconds(default,never):Single;
    static var SessionTimer(default,default):sandbox.diagnostics.FastTimer;
    static function UpdateActivity(game:String, gameVersion:String, map:String, addons:Array<String>):system.threading.tasks.Task;
}
