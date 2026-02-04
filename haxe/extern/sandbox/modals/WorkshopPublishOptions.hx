package sandbox.modals;

/** Passed to IModalSystem.WorkshopPublish */
@:native("Sandbox.Modals.WorkshopPublishOptions")
final extern class WorkshopPublishOptions {
    function new():Void;
    /** The default title of this item. The user will be able to change it. */
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    /** The description of this item. The user will be able to change it. */
    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    /** 512x512 thumbnail image, no transparency */
    var Thumbnail(default,set):sandbox.Bitmap;

    private inline function set_Thumbnail(value:sandbox.Bitmap):sandbox.Bitmap {
        var __value:sandbox.Bitmap = cast value;
        return untyped __cs__("{0}.Thumbnail = {1}", this, __value);
    }

    /** The filesystem containing the files to publish */
    var StorageEntry(default,set):sandbox.storage.Entry;

    private inline function set_StorageEntry(value:sandbox.storage.Entry):sandbox.storage.Entry {
        var __value:sandbox.storage.Entry = cast value;
        return untyped __cs__("{0}.StorageEntry = {1}", this, __value);
    }

    /** Keyvalues to store on the item. You can search and filter by these later. */
    var KeyValues(default,set):system.collections.generic.Dictionary<String,String>;

    private inline function set_KeyValues(value:system.collections.generic.Dictionary<String,String>):system.collections.generic.Dictionary<String,String> {
        var __value:system.collections.generic.Dictionary<String,String> = cast value;
        return untyped __cs__("{0}.KeyValues = {1}", this, __value);
    }

    /** Tags to set on the item. You can search and filter by these later. */
    var Tags(default,set):system.collections.generic.HashSet<String>;

    private inline function set_Tags(value:system.collections.generic.HashSet<String>):system.collections.generic.HashSet<String> {
        var __value:system.collections.generic.HashSet<String> = cast value;
        return untyped __cs__("{0}.Tags = {1}", this, __value);
    }

    /** You can store metadata on the item, which is just a string. This can be read when querying items before downloading them - so it can be useful for storing extra info you want to store. */
    var Metadata(default,set):String;

    private inline function set_Metadata(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Metadata = {1}", this, __value);
    }

    /** The visibility of the item */
    var Visibility(default,set):sandbox.storage.Visibility;

    private inline function set_Visibility(value:sandbox.storage.Visibility):sandbox.storage.Visibility {
        var __value:sandbox.storage.Visibility = cast value;
        return untyped __cs__("{0}.Visibility = {1}", this, __value);
    }

    /** Can the client select the visibility for this item */
    var CanSelectVisibility(default,set):Bool;

    private inline function set_CanSelectVisibility(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.CanSelectVisibility = {1}", this, __value);
    }

    /** Called when done. The ulong is the published item id. You can access it via url https://steamcommunity.com/sharedfiles/filedetails/?id=###### */
    var OnComplete(default,set):system.Action1<system.UInt64>;

    private inline function set_OnComplete(value:system.Action1<system.UInt64>):system.Action1<system.UInt64> {
        var __value:system.Action1<system.UInt64> = cast value;
        return untyped __cs__("{0}.OnComplete = {1}", this, __value);
    }

    /** Defined categories to show in the workshop publish modal */
    var Categories(default,never):system.collections.generic.Dictionary<String,sandbox.SerializedProperty>;
    /** Adds a new category associated with the specified enum type to the collection. The user will be prompted to select one of the enum values when publishing. This will be set on the file as keyvalues[name] = enum.ToString() */
    function AddCategory<TEnum>(name:String):Void;
}
