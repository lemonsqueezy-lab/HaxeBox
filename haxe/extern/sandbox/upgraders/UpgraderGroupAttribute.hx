package sandbox.upgraders;

@:native("Sandbox.Upgraders.UpgraderGroupAttribute")
final extern class UpgraderGroupAttribute {
    function new(upgraderGroupType:cs.system.Type, groupOrder:sandbox.upgraders.GroupOrder):Void;
    var UpgraderGroupType(default,never):cs.system.Type;
    var GroupOrder(default,never):sandbox.upgraders.GroupOrder;
    var TypeId(default,never):cs.system.Object;
}
