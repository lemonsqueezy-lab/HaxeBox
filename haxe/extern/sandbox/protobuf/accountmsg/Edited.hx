package sandbox.protobuf.accountmsg;

@:native("Sandbox.Protobuf.AccountMsg.Edited")
extern class Edited {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var UserId(default,default):haxe.Int64;
}
