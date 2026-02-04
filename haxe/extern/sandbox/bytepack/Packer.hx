package sandbox.bytepack;

@:native("Sandbox.BytePack.Packer")
extern class Packer {
    function new():Void;
    var TargetType(default,never):cs.system.Type;
    @:protected
    static var _visited(null,never):system.threading.ThreadLocal<system.collections.generic.HashSet<cs.system.Object>>;
    function Read(data:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
    function WriteTypeIdentifier(bs:sandbox.ByteStream, targetType:cs.system.Type):Void;
}
