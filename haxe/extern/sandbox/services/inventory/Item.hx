package sandbox.services.inventory;

/** Describes a type of item that can be in the inventory */
@:native("Sandbox.Services.Inventory.Item")
final extern class Item {
    var ItemId(default,never):system.UInt64;
    var DefinitionId(default,never):Int;
    var Definition(default,never):sandbox.services.inventory.ItemDefinition;
}
