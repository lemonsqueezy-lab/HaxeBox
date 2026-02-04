package sandbox;

/** Holds a collection of clothing items. Won't let you add items that aren't compatible. */
@:native("Sandbox.ClothingContainer")
extern class ClothingContainer {
    function new():Void;
    /** A user set name for this setup */
    var DisplayName(default,default):String;
    /** The avatar's height. Default is 0.5f. */
    var Height(default,default):Single;
    /** The avatar's age. Default is 0.0f. We'll pick a skin based on this. */
    var Age(default,default):Single;
    /** For the citizen the skin color is dynamic, based on a gradient. This is 0-1. */
    var Tint(default,default):Single;
    /** If true, this avatar prefers to use a human model when possible */
    var PrefersHuman(default,default):Bool;
    var Clothing(default,default):system.collections.generic.List<sandbox.clothingcontainer.ClothingEntry>;
    /** Add clothing item */
    overload function Add(clothing:sandbox.clothingcontainer.ClothingEntry):Void;
    overload function Add(clothing:sandbox.Clothing):sandbox.clothingcontainer.ClothingEntry;
    /** Add clothing items */
    function AddRange(clothing:system.collections.generic.IEnumerable<sandbox.clothingcontainer.ClothingEntry>):Void;
    /** Dress a skinned model renderer with an outfit. Doesn't download missing clothing. */
    function Apply(body:sandbox.SkinnedModelRenderer):Void;
    /** Dresses a skinned model with an outfit. Will apply all the clothes it can immediately, then download any missing clothing. */
    function ApplyAsync(body:sandbox.SkinnedModelRenderer, token:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Create the container from json definitions */
    static function CreateFromJson(json:String):sandbox.ClothingContainer;
    /** Create the container from the local user's setup */
    static function CreateFromLocalUser():sandbox.ClothingContainer;
    /** Deserialize from Json */
    function Deserialize(json:String):Void;
    /** Find a clothing entry matching this clothing item */
    function FindEntry(clothing:sandbox.Clothing):sandbox.clothingcontainer.ClothingEntry;
    /** Return a list of bodygroups and what their value should be */
    overload function GetBodyGroups():system.collections.generic.IEnumerable<system.ValueTuple2<String,Int>>;
    overload function GetBodyGroups(items:system.collections.generic.IEnumerable<sandbox.Clothing>):system.collections.generic.IEnumerable<system.ValueTuple2<String,Int>>;
    /** Returns true if we have this clothing item */
    function Has(clothing:sandbox.Clothing):Bool;
    /** Restrict things like Height to their sensible limits */
    function Normalize():Void;
    /** Clear the outfit from this model, make it named */
    function Reset(body:sandbox.SkinnedModelRenderer):Void;
    /** Serialize to Json */
    function Serialize():String;
    /** Add a clothing item if we don't already contain it, else remove it */
    function Toggle(clothing:sandbox.Clothing):Void;
}
