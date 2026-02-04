package sandbox;

@:native("Sandbox.CookieContainer")
final extern class CookieContainer {
    function Get<T>(key:String, fallback:T):T;
    /** Get a stored session cookie. */
    function GetString(key:String, fallback:String):String;
    /** Removes a cookie from the cache entirely */
    function Remove(key:String):Void;
    function Set<T>(key:String, value:T):Void;
    /** Set a cookie to be stored between sessions. The cookie will expire one month from when it was set. */
    function SetString(key:String, value:String):Void;
    function TryGet<T>(key:String, val:T):Bool;
    function TryGetString(key:String, val:String):Bool;
}
