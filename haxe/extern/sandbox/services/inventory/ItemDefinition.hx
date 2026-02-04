package sandbox.services.inventory;

/** Describes a type of item that can be in the inventory */
@:native("Sandbox.Services.Inventory.ItemDefinition")
final extern class ItemDefinition {
    function new(id:Int):Void;
    var Id(default,never):Int;
    var Name(default,never):String;
    var Description(default,never):String;
    var DescriptionWithMeta(default,never):String;
    var IconUrl(default,never):String;
    var IconUrlLarge(default,never):String;
    var PackageIdent(default,never):String;
    var Category(default,never):String;
    var StoreHidden(default,never):Bool;
    var Asset(default,never):String;
    var SellStart(default,never):Null<system.DateTime>;
    var SellEnd(default,never):Null<system.DateTime>;
    /** If we're for sale, this is our price */
    var Price(default,never):sandbox.CurrencyValue;
    /** If we're for sale but on sale, this is our regular price */
    var BasePrice(default,never):sandbox.CurrencyValue;
}
