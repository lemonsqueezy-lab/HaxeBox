package sandbox.storage;

/** A folder of content stored on disk */
@:native("Sandbox.Storage.Entry")
final extern class Entry {
    /** Creates a new storage entry with the specified type */
    function new(type:String):Void;
    /** The identity of this content */
    var Id(default,never):String;
    /** The type of content, eg "save", "dupe" */
    var Type(default,never):String;
    /** When this content was created */
    var Created(default,never):system.DateTimeOffset;
    /** This is where you save and load your files to */
    var Files(default,never):sandbox.BaseFileSystem;
    /** Gets the thumbnail texture for this storage entry, if one exists */
    var Thumbnail(default,never):sandbox.Texture;
    /** Deletes this storage entry and all its files from disk */
    function Delete():Void;
    function GetMeta<T>(key:String, defaultValue:T):T;
    /** Publishes this storage entry to the workshop */
    overload function Publish(options:sandbox.modals.WorkshopPublishOptions):Void;
    overload function Publish(title:String, tags:Array<String>, keyvalues:system.collections.generic.Dictionary<String,String>):Void;
    function SetMeta<T>(key:String, value:T):Void;
    /** Sets the thumbnail for this storage entry */
    function SetThumbnail(bitmap:sandbox.Bitmap):Void;
}
