package sandbox.protobuf.ratingmsg;

@:native("Sandbox.Protobuf.RatingMsg.RatingAdded")
extern class RatingAdded {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var TargetGuid(default,default):system.Guid;
    var SteamId(default,default):haxe.Int64;
    var Rating(default,default):Int;
}
