package sandbox.protobuf.forummsg;

@:native("Sandbox.Protobuf.ForumMsg.ThreadPosted")
extern class ThreadPosted {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var ForumId(default,default):haxe.Int64;
    var ThreadId(default,default):haxe.Int64;
    var PostId(default,default):haxe.Int64;
    var UserId(default,default):haxe.Int64;
}
