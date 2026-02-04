package sandbox.services;

/** Allows access to the Steam Inventory system */
@:native("Sandbox.Services.Inventory")
final extern class Inventory {
    /** All of the items the user has in their inventory */
    static var Items(default,never):system.collections.generic.IReadOnlyCollection<sandbox.services.inventory.Item>;
    /** All item definitions */
    static var Definitions(default,never):system.collections.generic.IReadOnlyCollection<sandbox.services.inventory.ItemDefinition>;
    /** Find a definition by id */
    static function FindDefinition(definitionId:Int):sandbox.services.inventory.ItemDefinition;
    /** Returns true if we have this item */
    static function HasItem(inventoryDefinitionId:Int):Bool;
}
