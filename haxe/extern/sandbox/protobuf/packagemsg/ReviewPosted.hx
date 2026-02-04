package sandbox.protobuf.packagemsg;

@:native("Sandbox.Protobuf.PackageMsg.ReviewPosted")
extern class ReviewPosted {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var PackageIdent(default,default):String;
    var Score(default,default):haxe.Int64;
    var SteamId(default,default):haxe.Int64;
    var DisplayName(default,default):String;
}
