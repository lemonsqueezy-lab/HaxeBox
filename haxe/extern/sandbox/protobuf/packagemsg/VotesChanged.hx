package sandbox.protobuf.packagemsg;

@:native("Sandbox.Protobuf.PackageMsg.VotesChanged")
extern class VotesChanged {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var PackageIdent(default,default):String;
    var VotesUp(default,default):haxe.Int64;
    var VotesDown(default,default):haxe.Int64;
}
