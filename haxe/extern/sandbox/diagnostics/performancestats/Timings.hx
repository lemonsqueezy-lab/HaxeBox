package sandbox.diagnostics.performancestats;

@:native("Sandbox.Diagnostics.PerformanceStats.Timings")
final extern class Timings {
    static var Async(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Animation(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Audio(default,never):sandbox.diagnostics.performancestats.Timings;
    static var AudioMixingThread(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Editor(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Input(default,never):sandbox.diagnostics.performancestats.Timings;
    static var NavMesh(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Network(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Particles(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Physics(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Render(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Scene(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Ui(default,never):sandbox.diagnostics.performancestats.Timings;
    static var Video(default,never):sandbox.diagnostics.performancestats.Timings;
    var Name(default,never):String;
    var Color(default,never):Color;
    var History(default,never):sandbox.utility.CircularBuffer<sandbox.diagnostics.performancestats.timings.Frame>;
    var IsManualFlip(default,default):Bool;
    function AverageMs(frames:Int):Single;
    static function Get(stage:String, color:Null<Color>):sandbox.diagnostics.performancestats.Timings;
    /** Return a list of the main top tier timings we're interested in */
    static function GetMain():system.collections.generic.IEnumerable<sandbox.diagnostics.performancestats.Timings>;
    function GetMetric(frames:Int):sandbox.diagnostics.performancestats.PeriodMetric;
}
