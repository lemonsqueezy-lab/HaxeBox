package sandbox.protobuf.packagemsg;

@:native("Sandbox.Protobuf.PackageMsg.Update")
extern class Update {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var PackageIdent(default,default):String;
    var RevisionId(default,default):haxe.Int64;
}
