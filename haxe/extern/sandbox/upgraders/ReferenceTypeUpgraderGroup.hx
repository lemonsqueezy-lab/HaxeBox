package sandbox.upgraders;

@:native("Sandbox.Upgraders.ReferenceTypeUpgraderGroup")
final extern class ReferenceTypeUpgraderGroup extends sandbox.upgraders.UpgraderGroup {
    function new():Void;
    function ShouldProcessType(type:cs.system.Type):Bool;
}
