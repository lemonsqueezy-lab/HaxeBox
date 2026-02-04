package sandbox.upgraders;

@:native("Sandbox.Upgraders.ReflectionUpgraderGroup")
extern class ReflectionUpgraderGroup {
    function new():Void;
    var IsInitialized(default,never):Bool;
    var Hotload(default,never):sandbox.Hotload;
}
