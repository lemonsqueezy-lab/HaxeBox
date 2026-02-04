package sandbox.services;

/** Activity Feed */
@:native("Sandbox.Services.Feed")
final extern class Feed {
    function new():Void;
    var Timestamp(default,default):system.DateTimeOffset;
    var Text(default,default):String;
    var Url(default,default):String;
    var EntryType(default,default):String;
    var Image(default,default):String;
    var Player(default,default):sandbox.services.players.Profile;
    var Package(default,default):sandbox.Package;
}
