package sandbox.upgraders;

@:native("Sandbox.Upgraders.RootUpgraderGroup")
final extern class RootUpgraderGroup {
    function new():Void;
    var IsInitialized(default,never):Bool;
    var Hotload(default,never):sandbox.Hotload;
}
