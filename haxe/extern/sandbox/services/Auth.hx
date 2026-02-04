package sandbox.services;

@:native("Sandbox.Services.Auth")
final extern class Auth {
    /** Get an auth token, which can be passed to the backend */
    static function GetToken(serviceName:String, token:system.threading.CancellationToken):system.threading.tasks.Task1<String>;
}
