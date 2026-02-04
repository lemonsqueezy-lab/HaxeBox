package sandbox;

/** Describes an item of clothing and implicitly which other items it can be worn with */
@:native("Sandbox.Clothing")
final extern class Clothing {
    function new():Void;
    var HasHumanSkin(default,default):Bool;
    /** Model to replace the human skin with */
    var HumanSkinModel(default,default):String;
    /** Replace skin with this */
    var HumanSkinMaterial(default,default):String;
    /** Replace skin with this */
    var HumanEyesMaterial(default,default):String;
    /** Bodygroup on the model to choose */
    var HumanSkinBodyGroups(default,default):system.UInt64;
    /** Bodygroup on the model to choose */
    var HumanSkinMaterialGroup(default,default):String;
    /** Allows adding tags for this skin, ie "female". This affects which alternative clothing models are used with it. */
    var HumanSkinTags(default,default):sandbox.TagSet;
    /** Name of the clothing to show in UI. */
    var Title(default,default):String;
    /** A subtitle for this clothing piece. */
    var Subtitle(default,default):String;
    /** What kind of clothing this is? */
    var Category(default,default):sandbox.clothing.ClothingCategory;
    /** A list of conditional models. (key) = tag(s), (value) = model */
    var ConditionalModels(default,default):system.collections.generic.Dictionary<String,String>;
    var Tags(default,default):String;
    /** This should be a single word to describe the subcategory, and should match any other items you want to categorize in the same bunch. The work will be tokenized so it can become localized. */
    var SubCategory(default,default):String;
    /** The clothing to parent this too. It will be displayed as a variation of its parent */
    var Parent(default,default):sandbox.Clothing;
    /** The model to bonemerge to the player when this clothing is equipped. */
    var Model(default,default):String;
    /** The model to bonemerge to the human player when this clothing is equipped. */
    var HumanAltModel(default,default):String;
    /** The model to bonemerge to the human player when this clothing is equipped. */
    var HumanAltFemaleModel(default,default):String;
    /** Replace the skin with this material */
    var SkinMaterial(default,default):String;
    /** Replace the eyes with this material */
    var EyesMaterial(default,default):String;
    /** Which material group of the model to use. */
    var MaterialGroup(default,default):String;
    /** Do we need to lift the heel up? */
    var HeelHeight(default,default):Single;
    /** Which slots this clothing takes on "inner" layer. */
    var SlotsUnder(default,default):sandbox.clothing.Slots;
    /** Which slots this clothing takes on "outer" layer. */
    var SlotsOver(default,default):sandbox.clothing.Slots;
    /** Which body parts of the player model should not show when this clothing is equipped. */
    var HideBody(default,default):sandbox.clothing.BodyGroups;
    var AllowTintSelect(default,default):Bool;
    var TintSelection(default,default):sandbox.Gradient;
    var TintDefault(default,default):Single;
    /** The Steam Item Definition ID for this clothing item, if it's an inventory item */
    var SteamItemDefinitionId(default,default):Null<Int>;
    /** Icon for this clothing piece. */
    var Icon(default,default):sandbox.clothing.IconSetup;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    /** Return true if this item of clothing can be worn with the target item, at the same time. */
    function CanBeWornWith(target:sandbox.Clothing):Bool;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
    /** Dress this sceneobject with the passed clothes. Return the created clothing. */
    static function DressSceneObject(citizen:sandbox.SceneModel, Clothing:system.collections.generic.IEnumerable<sandbox.Clothing>):system.collections.generic.List<sandbox.SceneModel>;
    /** Tries to get the model for this current clothing. Takes into account any conditional model for other clothing. */
    overload function GetModel(clothingList:system.collections.generic.IEnumerable<sandbox.Clothing>):String;
    overload function GetModel(clothingList:system.collections.generic.IEnumerable<sandbox.Clothing>, tagset:sandbox.TagSet):String;
    /** Can we wear this item? */
    function HasPermissions():Bool;
}
