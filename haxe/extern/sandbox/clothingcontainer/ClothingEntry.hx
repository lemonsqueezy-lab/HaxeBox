package sandbox.clothingcontainer;

@:native("Sandbox.ClothingContainer.ClothingEntry")
extern class ClothingEntry {
    overload function new():Void;
    overload function new(clothing:sandbox.Clothing):Void;
    /** A direct reference to the clothing item */
    var Clothing(default,default):sandbox.Clothing;
    /** If this is a Steam Inventory Item then this is the item definition id. This usually means we'll look up the clothing item from the workshop. */
    var ItemDefinitionId(default,default):Int;
    /** Used to select a tint for the item. The gradients are defined in the item. */
    var Tint(default,default):Null<Single>;
    /** If this item is manually placed, this is the bone we're attached to */
    var Bone(default,default):String;
    /** If this item is manually placed, this is the offset relative to the bone */
    var Transform(default,default):Null<Transform>;
}
