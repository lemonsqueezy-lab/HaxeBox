package sandbox.protobuf.packagemsg;

@:native("Sandbox.Protobuf.PackageMsg.ViewsChanged")
extern class ViewsChanged {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var PackageIdent(default,default):String;
    var Value(default,default):haxe.Int64;
}
