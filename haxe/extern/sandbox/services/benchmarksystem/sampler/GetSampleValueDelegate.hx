package sandbox.services.benchmarksystem.sampler;

@:native("Sandbox.Services.BenchmarkSystem.Sampler.GetSampleValueDelegate")
final extern class GetSampleValueDelegate {
    function new(object:cs.system.Object, method:system.IntPtr):Void;
    var Target(default,never):cs.system.Object;
    var Method(default,never):system.reflection.MethodInfo;
    function BeginInvoke(callback:system.AsyncCallback, object:cs.system.Object):system.IAsyncResult;
    function EndInvoke(result:system.IAsyncResult):Float;
    function Invoke():Float;
}
