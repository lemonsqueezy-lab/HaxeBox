package sandbox.services;

/** Allows access to stats for the current game. Stats are defined by the game's author and can be used to track anything from player actions to performance metrics. They are how you submit data to leaderboards. */
@:native("Sandbox.Services.BenchmarkSystem")
extern class BenchmarkSystem {
    function new():Void;
    /** Called to close a benchmark off */
    function Finish():Void;
    /** Should be called in update every frame */
    function Sample():Void;
    /** Finish this benchmark session and send it off to the backend */
    function SendAsync(token:system.threading.CancellationToken):system.threading.tasks.Task1<system.Guid>;
    /** Set a custom metric, like load time, shutdown time etc */
    function SetMetric(name:String, metric:Float):Void;
    /** Called to start a benchmark */
    function Start(name:String):Void;
}
