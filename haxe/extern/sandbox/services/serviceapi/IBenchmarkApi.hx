package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IBenchmarkApi")
extern class IBenchmarkApi {
    function Submit(input:sandbox.services.BenchmarkInput):system.threading.tasks.Task1<sandbox.services.BenchmarkResult>;
}
