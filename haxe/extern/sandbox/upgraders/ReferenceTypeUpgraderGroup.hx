package sandbox.upgraders;

@:native("Sandbox.Upgraders.ReferenceTypeUpgraderGroup")
final extern class ReferenceTypeUpgraderGroup {
    function new():Void;
    var IsInitialized(default,never):Bool;
    var Hotload(default,never):sandbox.Hotload;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
