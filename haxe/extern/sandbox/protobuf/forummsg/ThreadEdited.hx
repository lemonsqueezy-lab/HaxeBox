package sandbox.protobuf.forummsg;

@:native("Sandbox.Protobuf.ForumMsg.ThreadEdited")
extern class ThreadEdited {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var ForumId(default,default):haxe.Int64;
    var ThreadId(default,default):haxe.Int64;
}
