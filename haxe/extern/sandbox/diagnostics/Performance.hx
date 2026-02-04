package sandbox.diagnostics;

@:native("Sandbox.Diagnostics.Performance")
final extern class Performance {
    /** Record a frame state section in PerformanceStats */
    static function Scope(title:String):sandbox.diagnostics.performance.ScopeSection;
}
