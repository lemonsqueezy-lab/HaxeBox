package sandbox.services;

@:native("Sandbox.Services.PlayerFeedEntry")
extern class PlayerFeedEntry {
    function new():Void;
    var Timestamp(default,default):system.DateTimeOffset;
    var Text(default,default):String;
    var Url(default,default):String;
    var EntryType(default,default):String;
    var Image(default,default):String;
    var Data(default,default):String;
    var Emoji(default,default):String;
    var Player(default,default):sandbox.services.Player;
    var Package(default,default):sandbox.services.PackageWrapMinimal;
}
