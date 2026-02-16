package sandbox.services.benchmarksystem.sampler;

@:native("Sandbox.Services.BenchmarkSystem.Sampler.GetSampleValueDelegate")
final extern class GetSampleValueDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Float;
    function Invoke():Float;
}
