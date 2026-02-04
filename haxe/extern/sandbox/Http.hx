package sandbox;

/** Lets your game make async HTTP requests. */
@:native("Sandbox.Http")
final extern class Http {
    static function CreateJsonContent<T>(target:T):system.net.http.HttpContent;
    /** Check if the given Uri matches the following requirements: 1. Scheme is https/http or wss/ws 2. If it's localhost, only allow ports 80/443/8080/8443 3. Not an ip address */
    static function IsAllowed(uri:system.Uri):Bool;
    /** Checks if a given header is allowed to be set. */
    static function IsHeaderAllowed(header:String):Bool;
    /** Sends a HTTP request to the specified URI and returns the response in an asynchronous operation. */
    static function RequestAsync(requestUri:String, method:String, content:system.net.http.HttpContent, headers:system.collections.generic.Dictionary<String,String>, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<system.net.http.HttpResponseMessage>;
    /** Send a HTTP request to the specified URI and return the response body as a byte array in an asynchronous operation. */
    static function RequestBytesAsync(requestUri:String, method:String, content:system.net.http.HttpContent, headers:system.collections.generic.Dictionary<String,String>, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<Array<Int>>;
    /** Sends a HTTP request to the specified URI and return the response body as a JSON deserialized object in an asynchronous operation. */
    static function RequestJsonAsync<T>(requestUri:String, method:String, content:system.net.http.HttpContent, headers:system.collections.generic.Dictionary<String,String>, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<T>;
    /** Send a HTTP request to the specified URI and return the response body as a stream in an asynchronous operation. */
    static function RequestStreamAsync(requestUri:String, method:String, content:system.net.http.HttpContent, headers:system.collections.generic.Dictionary<String,String>, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<system.io.Stream>;
    /** Send a HTTP request to the specified URI and return the response body as a string in an asynchronous operation. */
    static function RequestStringAsync(requestUri:String, method:String, content:system.net.http.HttpContent, headers:system.collections.generic.Dictionary<String,String>, cancellationToken:system.threading.CancellationToken):system.threading.tasks.Task1<String>;
}
