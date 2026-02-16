package sandbox.services.benchmarksystem.sampler;

@:native("Sandbox.Services.BenchmarkSystem.Sampler.GetSampleKeyDelegate")
final extern class GetSampleKeyDelegate extends system.MulticastDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    function BeginInvoke(callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):UInt;
    function Invoke():UInt;
}
