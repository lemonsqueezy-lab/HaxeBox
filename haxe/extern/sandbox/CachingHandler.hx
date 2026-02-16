package sandbox;

@:native("Sandbox.CachingHandler")
extern class CachingHandler extends system.net.http.DelegatingHandler {
    function new():Void;
    @:protected function SendAsync(request:system.net.http.HttpRequestMessage, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<system.net.http.HttpResponseMessage>;
}
