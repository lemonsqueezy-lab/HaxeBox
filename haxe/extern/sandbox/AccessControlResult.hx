package sandbox;

@:native("Sandbox.AccessControlResult")
extern class AccessControlResult {
    function new():Void;
    var Success(default,never):Bool;
    var Errors(default,never):system.collections.concurrent.ConcurrentBag<String>;
    var WhitelistErrors(default,never):system.collections.concurrent.ConcurrentBag<system.ValueTuple2<String,Array<sandbox.accesscontrol.CodeLocation>>>;
}
