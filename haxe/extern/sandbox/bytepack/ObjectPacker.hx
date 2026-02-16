package sandbox.bytepack;

/** Writes a type header and then the value */
@:native("Sandbox.BytePack.ObjectPacker")
extern class ObjectPacker extends sandbox.bytepack.Packer {
    function Read(data:sandbox.ByteStream):cs.system.Object;
    function Write(bs:sandbox.ByteStream, obj:cs.system.Object):Void;
}
