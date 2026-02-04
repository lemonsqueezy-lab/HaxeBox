package sandbox.clothingcontainer;

/** Used for serialization */
@:native("Sandbox.ClothingContainer.Entry")
extern class Entry {
    function new():Void;
    /** The resource id of this item. This means it's on disk somewhere. */
    var Id(default,default):Int;
    /** The Steam Inventory Item Definition Id. This means we should look up the item from the workshop. */
    var ItemId(default,default):Int;
    /** Tint variable used to evaluate the model tint color gradient */
    var Tint(default,default):Null<Single>;
}
