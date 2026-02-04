package sandbox;

@:native("Sandbox.StoragePublish")
extern class StoragePublish {
    function new():Void;
    var ItemId(default,never):system.UInt64;
    var Title(default,default):String;
    var Description(default,default):String;
    var Metadata(default,default):String;
    var Visibility(default,default):sandbox.storage.Visibility;
    var KeyValues(default,default):system.collections.generic.Dictionary<String,String>;
    var Tags(default,default):system.collections.generic.HashSet<String>;
    var Thumbnail(default,default):sandbox.Bitmap;
    var FileSystem(default,default):sandbox.BaseFileSystem;
    var PercentComplete(default,never):Single;
    var IsPublishing(default,never):Bool;
    var IsFinished(default,never):Bool;
    function Submit():system.threading.tasks.Task;
}
