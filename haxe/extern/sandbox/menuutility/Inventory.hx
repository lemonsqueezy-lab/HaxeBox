package sandbox.menuutility;

@:native("Sandbox.MenuUtility.Inventory")
final extern class Inventory {
    static function CheckOut(cart:system.collections.generic.List<sandbox.services.inventory.ItemDefinition>):system.threading.tasks.Task1<Bool>;
}
