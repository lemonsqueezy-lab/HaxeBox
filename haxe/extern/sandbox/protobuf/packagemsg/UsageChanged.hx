package sandbox.protobuf.packagemsg;

@:native("Sandbox.Protobuf.PackageMsg.UsageChanged")
extern class UsageChanged {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var PackageIdent(default,default):String;
    var UserCount(default,default):haxe.Int64;
}
