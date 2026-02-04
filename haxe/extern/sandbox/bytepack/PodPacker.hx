package sandbox.bytepack;

@:native("Sandbox.BytePack.PodPacker`1")
extern class PodPacker<T> {
    var TargetType(default,never):cs.system.Type;
    function Read(data:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
}
