package sandbox;

@:native("Sandbox.CachingHandler")
extern class CachingHandler {
    function new():Void;
    var InnerHandler(default,default):system.net.http.HttpMessageHandler;
    @:protected function SendAsync(request:system.net.http.HttpRequestMessage, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<system.net.http.HttpResponseMessage>;
}
