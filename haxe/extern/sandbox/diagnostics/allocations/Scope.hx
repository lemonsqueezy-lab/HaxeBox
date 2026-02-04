package sandbox.diagnostics.allocations;

@:native("Sandbox.Diagnostics.Allocations.Scope")
extern class Scope {
    function new():Void;
    var Entries(default,never):system.collections.generic.IEnumerable<sandbox.diagnostics.allocations.Entry>;
    function Clear():Void;
    function Start():Void;
    function Stop():Void;
}
