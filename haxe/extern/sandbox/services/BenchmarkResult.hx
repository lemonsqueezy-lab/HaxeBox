package sandbox.services;

@:native("Sandbox.Services.BenchmarkResult")
final extern class BenchmarkResult {
    var Id(default,set):system.Guid;

    private inline function set_Id(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.Id = {1}", this, __value);
    }

}
