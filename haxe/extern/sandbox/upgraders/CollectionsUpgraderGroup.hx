package sandbox.upgraders;

@:native("Sandbox.Upgraders.CollectionsUpgraderGroup")
final extern class CollectionsUpgraderGroup {
    function new():Void;
    var IsInitialized(default,never):Bool;
    var Hotload(default,never):sandbox.Hotload;
}
