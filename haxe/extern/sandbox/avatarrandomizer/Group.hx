package sandbox.avatarrandomizer;

@:native("Sandbox.AvatarRandomizer.Group")
final extern class Group {
    var Chance(default,set):Single;

    private inline function set_Chance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Chance = {1}", this, __value);
    }

    var Categories(default,set):Array<sandbox.clothing.ClothingCategory>;

    private inline function set_Categories(value:Array<sandbox.clothing.ClothingCategory>):Array<sandbox.clothing.ClothingCategory> {
        var __value:Array<sandbox.clothing.ClothingCategory> = cast value;
        return untyped __cs__("{0}.Categories = {1}", this, __value);
    }

}
