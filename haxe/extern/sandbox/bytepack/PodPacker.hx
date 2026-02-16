package sandbox.bytepack;

@:native("Sandbox.BytePack.PodPacker`1")
extern class PodPacker<T> extends sandbox.bytepack.Packer {
    function Read(data:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
}
