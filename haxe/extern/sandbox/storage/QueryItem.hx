package sandbox.storage;

/** Details about a UGC item returned from a Steam Workshop query */
@:native("Sandbox.Storage.QueryItem")
extern class QueryItem {
    function new():Void;
    var Id(default,default):system.UInt64;
    var Title(default,default):String;
    var Description(default,default):String;
    var Visibility(default,default):Int;
    var Banned(default,default):Bool;
    var Accepted(default,default):Bool;
    var FileHandle(default,default):system.UInt64;
    var Preview(default,default):String;
    var Filename(default,default):String;
    var Size(default,default):system.UInt64;
    var Url(default,default):String;
    var VotesUp(default,default):Int;
    var VotesDown(default,default):Int;
    var Score(default,default):Single;
    var Metadata(default,default):String;
    var Owner(default,default):sandbox.services.players.Profile;
    var Created(default,default):system.DateTimeOffset;
    var Updated(default,default):system.DateTimeOffset;
    var Tags(default,default):system.collections.generic.List<String>;
    var KeyValues(default,default):system.collections.generic.Dictionary<String,String>;
    /** Install this item. This can return null if it's not of the right format. */
    function Install(token:system.threading.CancellationToken):system.threading.tasks.Task1<sandbox.storage.Entry>;
}
