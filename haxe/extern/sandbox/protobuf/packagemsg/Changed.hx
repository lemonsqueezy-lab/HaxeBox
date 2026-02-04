package sandbox.protobuf.packagemsg;

@:native("Sandbox.Protobuf.PackageMsg.Changed")
extern class Changed {
    function new():Void;
    static var MessageIdent(default,never):Int;
    var PackageIdent(default,default):String;
}
