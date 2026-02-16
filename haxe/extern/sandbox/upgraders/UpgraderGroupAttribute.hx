package sandbox.upgraders;

@:native("Sandbox.Upgraders.UpgraderGroupAttribute")
final extern class UpgraderGroupAttribute extends system.Attribute {
    function new(upgraderGroupType:cs.system.Type, groupOrder:sandbox.upgraders.GroupOrder):Void;
    var UpgraderGroupType(default,never):cs.system.Type;
    var GroupOrder(default,never):sandbox.upgraders.GroupOrder;
}
